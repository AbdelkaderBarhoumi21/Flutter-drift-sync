// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppFailure {

 String get message;
/// Create a copy of AppFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppFailureCopyWith<AppFailure> get copyWith => _$AppFailureCopyWithImpl<AppFailure>(this as AppFailure, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class $AppFailureCopyWith<$Res>  {
  factory $AppFailureCopyWith(AppFailure value, $Res Function(AppFailure) _then) = _$AppFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$AppFailureCopyWithImpl<$Res>
    implements $AppFailureCopyWith<$Res> {
  _$AppFailureCopyWithImpl(this._self, this._then);

  final AppFailure _self;
  final $Res Function(AppFailure) _then;

/// Create a copy of AppFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AppFailure].
extension AppFailurePatterns on AppFailure {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ServerAppFailure value)?  server,TResult Function( CacheAppFailure value)?  cache,TResult Function( NetworkAppFailure value)?  network,TResult Function( ValidationAppFailure value)?  validation,TResult Function( SyncConflictAppFailure value)?  syncConflict,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ServerAppFailure() when server != null:
return server(_that);case CacheAppFailure() when cache != null:
return cache(_that);case NetworkAppFailure() when network != null:
return network(_that);case ValidationAppFailure() when validation != null:
return validation(_that);case SyncConflictAppFailure() when syncConflict != null:
return syncConflict(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ServerAppFailure value)  server,required TResult Function( CacheAppFailure value)  cache,required TResult Function( NetworkAppFailure value)  network,required TResult Function( ValidationAppFailure value)  validation,required TResult Function( SyncConflictAppFailure value)  syncConflict,}){
final _that = this;
switch (_that) {
case ServerAppFailure():
return server(_that);case CacheAppFailure():
return cache(_that);case NetworkAppFailure():
return network(_that);case ValidationAppFailure():
return validation(_that);case SyncConflictAppFailure():
return syncConflict(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ServerAppFailure value)?  server,TResult? Function( CacheAppFailure value)?  cache,TResult? Function( NetworkAppFailure value)?  network,TResult? Function( ValidationAppFailure value)?  validation,TResult? Function( SyncConflictAppFailure value)?  syncConflict,}){
final _that = this;
switch (_that) {
case ServerAppFailure() when server != null:
return server(_that);case CacheAppFailure() when cache != null:
return cache(_that);case NetworkAppFailure() when network != null:
return network(_that);case ValidationAppFailure() when validation != null:
return validation(_that);case SyncConflictAppFailure() when syncConflict != null:
return syncConflict(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message)?  server,TResult Function( String message)?  cache,TResult Function( String message)?  network,TResult Function( String message)?  validation,TResult Function( String message,  dynamic localData,  dynamic remoteData)?  syncConflict,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ServerAppFailure() when server != null:
return server(_that.message);case CacheAppFailure() when cache != null:
return cache(_that.message);case NetworkAppFailure() when network != null:
return network(_that.message);case ValidationAppFailure() when validation != null:
return validation(_that.message);case SyncConflictAppFailure() when syncConflict != null:
return syncConflict(_that.message,_that.localData,_that.remoteData);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message)  server,required TResult Function( String message)  cache,required TResult Function( String message)  network,required TResult Function( String message)  validation,required TResult Function( String message,  dynamic localData,  dynamic remoteData)  syncConflict,}) {final _that = this;
switch (_that) {
case ServerAppFailure():
return server(_that.message);case CacheAppFailure():
return cache(_that.message);case NetworkAppFailure():
return network(_that.message);case ValidationAppFailure():
return validation(_that.message);case SyncConflictAppFailure():
return syncConflict(_that.message,_that.localData,_that.remoteData);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message)?  server,TResult? Function( String message)?  cache,TResult? Function( String message)?  network,TResult? Function( String message)?  validation,TResult? Function( String message,  dynamic localData,  dynamic remoteData)?  syncConflict,}) {final _that = this;
switch (_that) {
case ServerAppFailure() when server != null:
return server(_that.message);case CacheAppFailure() when cache != null:
return cache(_that.message);case NetworkAppFailure() when network != null:
return network(_that.message);case ValidationAppFailure() when validation != null:
return validation(_that.message);case SyncConflictAppFailure() when syncConflict != null:
return syncConflict(_that.message,_that.localData,_that.remoteData);case _:
  return null;

}
}

}

/// @nodoc


class ServerAppFailure implements AppFailure {
  const ServerAppFailure({required this.message});
  

@override final  String message;

/// Create a copy of AppFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerAppFailureCopyWith<ServerAppFailure> get copyWith => _$ServerAppFailureCopyWithImpl<ServerAppFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerAppFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppFailure.server(message: $message)';
}


}

/// @nodoc
abstract mixin class $ServerAppFailureCopyWith<$Res> implements $AppFailureCopyWith<$Res> {
  factory $ServerAppFailureCopyWith(ServerAppFailure value, $Res Function(ServerAppFailure) _then) = _$ServerAppFailureCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ServerAppFailureCopyWithImpl<$Res>
    implements $ServerAppFailureCopyWith<$Res> {
  _$ServerAppFailureCopyWithImpl(this._self, this._then);

  final ServerAppFailure _self;
  final $Res Function(ServerAppFailure) _then;

/// Create a copy of AppFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ServerAppFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CacheAppFailure implements AppFailure {
  const CacheAppFailure({required this.message});
  

@override final  String message;

/// Create a copy of AppFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CacheAppFailureCopyWith<CacheAppFailure> get copyWith => _$CacheAppFailureCopyWithImpl<CacheAppFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CacheAppFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppFailure.cache(message: $message)';
}


}

/// @nodoc
abstract mixin class $CacheAppFailureCopyWith<$Res> implements $AppFailureCopyWith<$Res> {
  factory $CacheAppFailureCopyWith(CacheAppFailure value, $Res Function(CacheAppFailure) _then) = _$CacheAppFailureCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class _$CacheAppFailureCopyWithImpl<$Res>
    implements $CacheAppFailureCopyWith<$Res> {
  _$CacheAppFailureCopyWithImpl(this._self, this._then);

  final CacheAppFailure _self;
  final $Res Function(CacheAppFailure) _then;

/// Create a copy of AppFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(CacheAppFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class NetworkAppFailure implements AppFailure {
  const NetworkAppFailure({required this.message});
  

@override final  String message;

/// Create a copy of AppFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NetworkAppFailureCopyWith<NetworkAppFailure> get copyWith => _$NetworkAppFailureCopyWithImpl<NetworkAppFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkAppFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppFailure.network(message: $message)';
}


}

/// @nodoc
abstract mixin class $NetworkAppFailureCopyWith<$Res> implements $AppFailureCopyWith<$Res> {
  factory $NetworkAppFailureCopyWith(NetworkAppFailure value, $Res Function(NetworkAppFailure) _then) = _$NetworkAppFailureCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class _$NetworkAppFailureCopyWithImpl<$Res>
    implements $NetworkAppFailureCopyWith<$Res> {
  _$NetworkAppFailureCopyWithImpl(this._self, this._then);

  final NetworkAppFailure _self;
  final $Res Function(NetworkAppFailure) _then;

/// Create a copy of AppFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(NetworkAppFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ValidationAppFailure implements AppFailure {
  const ValidationAppFailure({required this.message});
  

@override final  String message;

/// Create a copy of AppFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValidationAppFailureCopyWith<ValidationAppFailure> get copyWith => _$ValidationAppFailureCopyWithImpl<ValidationAppFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValidationAppFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppFailure.validation(message: $message)';
}


}

/// @nodoc
abstract mixin class $ValidationAppFailureCopyWith<$Res> implements $AppFailureCopyWith<$Res> {
  factory $ValidationAppFailureCopyWith(ValidationAppFailure value, $Res Function(ValidationAppFailure) _then) = _$ValidationAppFailureCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ValidationAppFailureCopyWithImpl<$Res>
    implements $ValidationAppFailureCopyWith<$Res> {
  _$ValidationAppFailureCopyWithImpl(this._self, this._then);

  final ValidationAppFailure _self;
  final $Res Function(ValidationAppFailure) _then;

/// Create a copy of AppFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ValidationAppFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SyncConflictAppFailure implements AppFailure {
  const SyncConflictAppFailure({required this.message, this.localData, this.remoteData});
  

@override final  String message;
 final  dynamic localData;
 final  dynamic remoteData;

/// Create a copy of AppFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyncConflictAppFailureCopyWith<SyncConflictAppFailure> get copyWith => _$SyncConflictAppFailureCopyWithImpl<SyncConflictAppFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncConflictAppFailure&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.localData, localData)&&const DeepCollectionEquality().equals(other.remoteData, remoteData));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(localData),const DeepCollectionEquality().hash(remoteData));

@override
String toString() {
  return 'AppFailure.syncConflict(message: $message, localData: $localData, remoteData: $remoteData)';
}


}

/// @nodoc
abstract mixin class $SyncConflictAppFailureCopyWith<$Res> implements $AppFailureCopyWith<$Res> {
  factory $SyncConflictAppFailureCopyWith(SyncConflictAppFailure value, $Res Function(SyncConflictAppFailure) _then) = _$SyncConflictAppFailureCopyWithImpl;
@override @useResult
$Res call({
 String message, dynamic localData, dynamic remoteData
});




}
/// @nodoc
class _$SyncConflictAppFailureCopyWithImpl<$Res>
    implements $SyncConflictAppFailureCopyWith<$Res> {
  _$SyncConflictAppFailureCopyWithImpl(this._self, this._then);

  final SyncConflictAppFailure _self;
  final $Res Function(SyncConflictAppFailure) _then;

/// Create a copy of AppFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? localData = freezed,Object? remoteData = freezed,}) {
  return _then(SyncConflictAppFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,localData: freezed == localData ? _self.localData : localData // ignore: cast_nullable_to_non_nullable
as dynamic,remoteData: freezed == remoteData ? _self.remoteData : remoteData // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
