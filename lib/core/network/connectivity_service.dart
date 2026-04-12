import 'dart:async';
import 'dart:io';
import 'dart:isolate';

import 'package:flutter_drift_sync/core/network/app_api_endpoints.dart';
import 'package:flutter_drift_sync/core/network/connectivity_params.dart';

class ConnectivityService {
  ConnectivityService({String? serverUrl})
    : _serverUrl = serverUrl ?? AppApiEndpoints.baseUrl;

  final String _serverUrl;
  Isolate? _isolate;
  ReceivePort? _receivePort;

  final StreamController<ConnectivityResult> _resultController =
      StreamController<ConnectivityResult>.broadcast();

  Stream<ConnectivityResult> get onConnectivityChanged =>
      _resultController.stream;

  ConnectivityResult _lastResult = ConnectivityResult(
    hasInternet: false,
    canReachServer: false,
    checkAt: _epoch,
  );

  ConnectivityResult get lastResult => _lastResult;

  static final DateTime _epoch = DateTime.fromMillisecondsSinceEpoch(0);

  // ─── Periodic Check ────────────────────────────────────────────────

  /// Start the background isolate that periodically checks connectivity.
  ///
  /// The isolate:
  /// 1. Pings `1.1.1.1` (Cloudflare DNS) to verify raw internet access
  /// 2. Pings the database/API server URL to verify the backend is reachable
  /// 3. Sends a [ConnectivityResult] back to the main thread via SendPort
  ///
  Future<void> startPeriodicCheck({
    Duration interval = const Duration(seconds: 30),
    Duration timeout = const Duration(seconds: 5),
  }) async {
    await stopPeriodicCheck();

    _receivePort = ReceivePort();

    final config = PeriodicCheckConfig(
      resultPort: _receivePort!.sendPort,
      serverUrl: _serverUrl,
      timeout: timeout,
      checkInterval: interval,
    );

    _isolate = await Isolate.spawn(
      _periodicCheckEntryPoint,
      config,
      debugName: 'connectivity_isolate_checker',
    );

    _receivePort!.listen((message) {
      if (message is ConnectivityResult) {
        _lastResult = message;
        _resultController.add(message);
      }
    });
  }

  Future<void> stopPeriodicCheck() async {
    // kill stop the isolate but it doesn't clear the variables(still hold ref to dead isolate object => solution = null)
    _isolate?.kill(priority: Isolate.immediate); // only kill if not null
    _isolate = null;
    _receivePort?.close();
    _receivePort = null;
  }

  /// Isolate entry point for periodic checks
  ///
  static void _periodicCheckEntryPoint(PeriodicCheckConfig config) async {
    Timer.periodic(config.checkInterval, (_) async {
      final result = await _performCheck(config.serverUrl, config.timeout);

      config.resultPort.send(result);
    });

    _performCheck(config.serverUrl, config.timeout).then((result) {
      config.resultPort.send(result);
    });
  }

  // ─── One-Shot Check ────────────────────────────────────────────────

  /// One-shot connectivity check (runs in a separate isolate)
  ///
  Future<ConnectivityResult> checkNow({
    Duration timeout = const Duration(seconds: 5),
  }) async {
    final receivePort = ReceivePort();

    final request = ConnectivityCheckRequest(
      replyPort: receivePort.sendPort,
      serverUrl: _serverUrl,
      timeout: timeout,
    );

    await Isolate.spawn(
      _oneShotCheckEntryPoint,
      request,
      debugName: 'connectivity_isolate_one_shot',
    );

    final result = await receivePort.first as ConnectivityResult;
    receivePort.close();

    _lastResult = result;
    _resultController.add(result);
    return result;
  }

  /// Isolate entry point for one-shot check
  static void _oneShotCheckEntryPoint(ConnectivityCheckRequest request) async {
    final result = await _performCheck(request.serverUrl, request.timeout);
    request.replyPort.send(result);
    Isolate.exit();
  }

  // ─── Shared Check Logic ────────────────────────────────────────────

  /// The actual connectivity check logic — runs inside the isolate
  static Future<ConnectivityResult> _performCheck(
    String serverUrl,
    Duration timeout,
  ) async {
    bool hasInternet = false;
    bool canReachServer = false;

    // Step 1: Check raw internet by pinging Cloudflare DNS
    try {
      final internetResult = await InternetAddress.lookup(
        '1.1.1.1',
      ).timeout(timeout);
      hasInternet =
          internetResult.isNotEmpty && internetResult[0].rawAddress.isNotEmpty;
    } catch (e) {
      hasInternet = false;
    }

    // Step 2: Check if our API server is reachable

    if (hasInternet) {
      try {
        final uri = Uri.parse(serverUrl);
        // We try to open a socket to the server host:port

        final socket = await Socket.connect(
          uri.host,
          uri.port,
          timeout: timeout,
        );
        socket.destroy();
        canReachServer = true;
      } catch (_) {
        canReachServer = false;
      }
    }

    final result = ConnectivityResult(
      hasInternet: hasInternet,
      canReachServer: canReachServer,
      checkAt: DateTime.now(),
    );

    return result;
  }

  // ─── Lifecycle ─────────────────────────────────────────────────────

  void dispose() {
    stopPeriodicCheck();
    _resultController.close();
  }
}
