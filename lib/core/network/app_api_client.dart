import 'dart:convert';
import 'dart:io';

import 'package:flutter_drift_sync/core/errors/app_exceptions.dart';
import 'package:flutter_drift_sync/core/network/api_error_mapper.dart';
import 'package:http/http.dart' as http;

class AppApiClient {
  final http.Client client;
  final String baseUrl;

  AppApiClient({required this.client, required this.baseUrl});
  Map<String, String> get _headers => {};

  /// Builds a full URI from the endpoint
  Uri _buildUri(String endpoint) => Uri.parse('$baseUrl$endpoint');

  /// GET request
  Future<dynamic> get(String endpoint) async {
    try {
      final response = await client
          .get(_buildUri(endpoint), headers: _headers)
          .timeout(const Duration(seconds: 30));
      return ApiErrorMapper.handleResponse(response);
    } on SocketException {
      throw ServerException('No internet connection');
    } catch (e) {
      if (e is ServerException || e is NetworkException) rethrow;
      throw ServerException(e.toString());
    }
  }

  /// POST request
  Future<dynamic> post(String endpoint, {dynamic body}) async {
    try {
      final response = await client
          .post(
            Uri.parse('$baseUrl$endpoint'),
            headers: _headers,
            body: json.encode(body),
          )
          .timeout(const Duration(seconds: 30));
      return ApiErrorMapper.handleResponse(response);
    } on SocketException {
      throw const NetworkException('No internet connection');
    } catch (e) {
      if (e is ServerException || e is NetworkException) rethrow;
      throw ServerException(e.toString());
    }
  }

  /// PUT request
  Future<dynamic> put(String endpoint, {dynamic body}) async {
    try {
      final response = await client
          .put(_buildUri(endpoint), headers: _headers, body: json.encode(body))
          .timeout(const Duration(seconds: 30));

      return ApiErrorMapper.handleResponse(response);
    } on SocketException {
      throw const NetworkException('No internet connection');
    } catch (e) {
      if (e is ServerException || e is NetworkException) rethrow;
      throw ServerException(e.toString());
    }
  }

  /// DELETE request
  Future<void> delete(String endpoint) async {
    try {
      final response = await client
          .delete(Uri.parse('$baseUrl$endpoint'), headers: _headers)
          .timeout(const Duration(seconds: 30));
      if (response.statusCode == 204) return;
      ApiErrorMapper.handleResponse(response);
    } on SocketException {
      throw const NetworkException('No internet connection');
    } catch (e) {
      if (e is ServerException || e is NetworkException) rethrow;
      throw ServerException(e.toString());
    }
  }
}
