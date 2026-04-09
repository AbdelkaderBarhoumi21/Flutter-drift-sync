/// [] = optional positional
/// {} = optional named

abstract class AppExceptions implements Exception {
  const AppExceptions(this.message, [this.statusCode]);
  final String message;
  final int? statusCode;
}

class ServerException extends AppExceptions {
  const ServerException(super.message, [super.statusCode]);
}

class CacheException extends AppExceptions {
  const CacheException(super.message, [super.statusCode]);
}

class NetworkException extends AppExceptions {
  const NetworkException(super.message, [super.statusCode]);
}

class ValidationException extends AppExceptions {
  const ValidationException(super.message, [super.statusCode]);
}

class SyncConflictException extends AppExceptions {
  const SyncConflictException(super.message, [super.statusCode]);
}
