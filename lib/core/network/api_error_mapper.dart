import 'dart:convert';

import 'package:flutter_drift_sync/core/errors/app_exceptions.dart';
import 'package:http/http.dart' as http;

class ApiErrorMapper {
  ApiErrorMapper._();

  static dynamic handleResponse(http.Response response) {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      if (response.body.isEmpty) return null;
      return json.decode(response.body);
    }

    switch (response.statusCode) {
      case 400:
        throw ServerException('Bad request', statusCode: 400);
      case 404:
        throw ServerException('Not found', statusCode: 404);
      case 409:
        throw ServerException('Conflict', statusCode: 409);
      case 500:
        throw ServerException('Internal server error', statusCode: 500);
      default:
        throw ServerException(
          'Error ${response.statusCode}: ${response.body}',
          statusCode: response.statusCode,
        );
    }
  }
}
