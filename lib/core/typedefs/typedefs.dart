import 'package:dartz/dartz.dart';
import 'package:flutter_drift_sync/core/errors/failure.dart';

/// A Future that returns Either a Failure or a success value T
typedef ResultFuture<T> = Future<Either<Failure, T>>;

/// Shorthand for operations that return void on success
typedef ResultVoid = ResultFuture<void>;

/// JSON map alias
typedef DataMap = Map<String, dynamic>;
