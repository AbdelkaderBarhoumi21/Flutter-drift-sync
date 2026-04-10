import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_failure.freezed.dart';

@freezed
sealed class AppFailure with _$AppFailure {
  const factory AppFailure.server({required String message}) = ServerAppFailure;
  const factory AppFailure.cache({required String message}) = CacheAppFailure;
  const factory AppFailure.network({required String message}) =
      NetworkAppFailure;
  const factory AppFailure.validation({required String message}) =
      ValidationAppFailure;

  const factory AppFailure.syncConflict({
    required String message,
    dynamic localData,
    dynamic remoteData,
  }) = SyncConflictAppFailure;
}
