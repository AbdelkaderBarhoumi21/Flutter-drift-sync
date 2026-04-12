// Message send from ISOLATE to main thread
import 'dart:isolate';

class ConnectivityResult {
  ConnectivityResult({
    required this.hasInternet,
    required this.canReachServer,
    required this.checkAt,
  });
  final bool hasInternet;
  final bool canReachServer;
  final DateTime checkAt;

  bool get isFullyOnline => hasInternet && canReachServer;

  @override
  String toString() =>
      'ConnectivityResult(hasInternet: $hasInternet, canReachServer: $canReachServer, checkAt: $checkAt)';
}

// Message sent from main thread to ISOLATE
class ConnectivityCheckRequest {
  final SendPort replyPort;
  final String serverUrl;
  final Duration timeout;

  ConnectivityCheckRequest({
    required this.replyPort,
    required this.serverUrl,
    required this.timeout,
  });

  @override
  String toString() =>
      'ConnectivityCheckRequest(serverUrl: $serverUrl, timeout: $timeout)';
}

class PeriodicCheckConfig {
  final SendPort resultPort;
  final String serverUrl;
  final Duration timeout;
  final Duration checkInterval;

  PeriodicCheckConfig({
    required this.resultPort,
    required this.serverUrl,
    required this.timeout,
    required this.checkInterval,
  });
  @override
  String toString() =>
      'PeriodicCheckConfig(serverUrl: $serverUrl, timeout: $timeout, checkInterval: $checkInterval)';
}
