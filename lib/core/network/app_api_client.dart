import 'package:http/http.dart' as http;

class AppApiClient {
  final http.Client client;
  final String baseUrl;

  AppApiClient({required this.client, required this.baseUrl});

  /// GET request
  ///
  Future<dynamic> get(String endpoint) async {
    try {} catch (e) {
      print(e);
    }
  }
}
