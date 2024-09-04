// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FetchUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNearbyUsers,
    required TResult Function(String id, String location) sendUserLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchNearbyUsers,
    TResult? Function(String id, String location)? sendUserLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNearbyUsers,
    TResult Function(String id, String location)? sendUserLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchNearbyUserEvent value) fetchNearbyUsers,
    required TResult Function(SendUserLocationEvent value) sendUserLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchNearbyUserEvent value)? fetchNearbyUsers,
    TResult? Function(SendUserLocationEvent value)? sendUserLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchNearbyUserEvent value)? fetchNearbyUsers,
    TResult Function(SendUserLocationEvent value)? sendUserLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchUserEventCopyWith<$Res> {
  factory $FetchUserEventCopyWith(
          FetchUserEvent value, $Res Function(FetchUserEvent) then) =
      _$FetchUserEventCopyWithImpl<$Res, FetchUserEvent>;
}

/// @nodoc
class _$FetchUserEventCopyWithImpl<$Res, $Val extends FetchUserEvent>
    implements $FetchUserEventCopyWith<$Res> {
  _$FetchUserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchNearbyUserEventImplCopyWith<$Res> {
  factory _$$FetchNearbyUserEventImplCopyWith(_$FetchNearbyUserEventImpl value,
          $Res Function(_$FetchNearbyUserEventImpl) then) =
      __$$FetchNearbyUserEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchNearbyUserEventImplCopyWithImpl<$Res>
    extends _$FetchUserEventCopyWithImpl<$Res, _$FetchNearbyUserEventImpl>
    implements _$$FetchNearbyUserEventImplCopyWith<$Res> {
  __$$FetchNearbyUserEventImplCopyWithImpl(_$FetchNearbyUserEventImpl _value,
      $Res Function(_$FetchNearbyUserEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchNearbyUserEventImpl
    with DiagnosticableTreeMixin
    implements _FetchNearbyUserEvent {
  const _$FetchNearbyUserEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FetchUserEvent.fetchNearbyUsers()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'FetchUserEvent.fetchNearbyUsers'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchNearbyUserEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNearbyUsers,
    required TResult Function(String id, String location) sendUserLocation,
  }) {
    return fetchNearbyUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchNearbyUsers,
    TResult? Function(String id, String location)? sendUserLocation,
  }) {
    return fetchNearbyUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNearbyUsers,
    TResult Function(String id, String location)? sendUserLocation,
    required TResult orElse(),
  }) {
    if (fetchNearbyUsers != null) {
      return fetchNearbyUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchNearbyUserEvent value) fetchNearbyUsers,
    required TResult Function(SendUserLocationEvent value) sendUserLocation,
  }) {
    return fetchNearbyUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchNearbyUserEvent value)? fetchNearbyUsers,
    TResult? Function(SendUserLocationEvent value)? sendUserLocation,
  }) {
    return fetchNearbyUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchNearbyUserEvent value)? fetchNearbyUsers,
    TResult Function(SendUserLocationEvent value)? sendUserLocation,
    required TResult orElse(),
  }) {
    if (fetchNearbyUsers != null) {
      return fetchNearbyUsers(this);
    }
    return orElse();
  }
}

abstract class _FetchNearbyUserEvent implements FetchUserEvent {
  const factory _FetchNearbyUserEvent() = _$FetchNearbyUserEventImpl;
}

/// @nodoc
abstract class _$$SendUserLocationEventImplCopyWith<$Res> {
  factory _$$SendUserLocationEventImplCopyWith(
          _$SendUserLocationEventImpl value,
          $Res Function(_$SendUserLocationEventImpl) then) =
      __$$SendUserLocationEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, String location});
}

/// @nodoc
class __$$SendUserLocationEventImplCopyWithImpl<$Res>
    extends _$FetchUserEventCopyWithImpl<$Res, _$SendUserLocationEventImpl>
    implements _$$SendUserLocationEventImplCopyWith<$Res> {
  __$$SendUserLocationEventImplCopyWithImpl(_$SendUserLocationEventImpl _value,
      $Res Function(_$SendUserLocationEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? location = null,
  }) {
    return _then(_$SendUserLocationEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendUserLocationEventImpl
    with DiagnosticableTreeMixin
    implements SendUserLocationEvent {
  const _$SendUserLocationEventImpl({required this.id, required this.location});

  @override
  final String id;
  @override
  final String location;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FetchUserEvent.sendUserLocation(id: $id, location: $location)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FetchUserEvent.sendUserLocation'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('location', location));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendUserLocationEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendUserLocationEventImplCopyWith<_$SendUserLocationEventImpl>
      get copyWith => __$$SendUserLocationEventImplCopyWithImpl<
          _$SendUserLocationEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNearbyUsers,
    required TResult Function(String id, String location) sendUserLocation,
  }) {
    return sendUserLocation(id, location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchNearbyUsers,
    TResult? Function(String id, String location)? sendUserLocation,
  }) {
    return sendUserLocation?.call(id, location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNearbyUsers,
    TResult Function(String id, String location)? sendUserLocation,
    required TResult orElse(),
  }) {
    if (sendUserLocation != null) {
      return sendUserLocation(id, location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchNearbyUserEvent value) fetchNearbyUsers,
    required TResult Function(SendUserLocationEvent value) sendUserLocation,
  }) {
    return sendUserLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchNearbyUserEvent value)? fetchNearbyUsers,
    TResult? Function(SendUserLocationEvent value)? sendUserLocation,
  }) {
    return sendUserLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchNearbyUserEvent value)? fetchNearbyUsers,
    TResult Function(SendUserLocationEvent value)? sendUserLocation,
    required TResult orElse(),
  }) {
    if (sendUserLocation != null) {
      return sendUserLocation(this);
    }
    return orElse();
  }
}

abstract class SendUserLocationEvent implements FetchUserEvent {
  const factory SendUserLocationEvent(
      {required final String id,
      required final String location}) = _$SendUserLocationEventImpl;

  String get id;
  String get location;
  @JsonKey(ignore: true)
  _$$SendUserLocationEventImplCopyWith<_$SendUserLocationEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FetchUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUsersloading,
    required TResult Function(List<User> users) fetchUsers,
    required TResult Function(NetworkExceptions error) fetchUsersError,
    required TResult Function() sendLocation,
    required TResult Function() sendLocationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchUsersloading,
    TResult? Function(List<User> users)? fetchUsers,
    TResult? Function(NetworkExceptions error)? fetchUsersError,
    TResult? Function()? sendLocation,
    TResult? Function()? sendLocationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUsersloading,
    TResult Function(List<User> users)? fetchUsers,
    TResult Function(NetworkExceptions error)? fetchUsersError,
    TResult Function()? sendLocation,
    TResult Function()? sendLocationError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAllUserLoading value) fetchUsersloading,
    required TResult Function(FetchAllUserSuccess value) fetchUsers,
    required TResult Function(FetchAllUserError value) fetchUsersError,
    required TResult Function(SendUserLocationSuccess value) sendLocation,
    required TResult Function(SendUserLocationError value) sendLocationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAllUserLoading value)? fetchUsersloading,
    TResult? Function(FetchAllUserSuccess value)? fetchUsers,
    TResult? Function(FetchAllUserError value)? fetchUsersError,
    TResult? Function(SendUserLocationSuccess value)? sendLocation,
    TResult? Function(SendUserLocationError value)? sendLocationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAllUserLoading value)? fetchUsersloading,
    TResult Function(FetchAllUserSuccess value)? fetchUsers,
    TResult Function(FetchAllUserError value)? fetchUsersError,
    TResult Function(SendUserLocationSuccess value)? sendLocation,
    TResult Function(SendUserLocationError value)? sendLocationError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchUserStateCopyWith<$Res> {
  factory $FetchUserStateCopyWith(
          FetchUserState value, $Res Function(FetchUserState) then) =
      _$FetchUserStateCopyWithImpl<$Res, FetchUserState>;
}

/// @nodoc
class _$FetchUserStateCopyWithImpl<$Res, $Val extends FetchUserState>
    implements $FetchUserStateCopyWith<$Res> {
  _$FetchUserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchAllUserLoadingImplCopyWith<$Res> {
  factory _$$FetchAllUserLoadingImplCopyWith(_$FetchAllUserLoadingImpl value,
          $Res Function(_$FetchAllUserLoadingImpl) then) =
      __$$FetchAllUserLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAllUserLoadingImplCopyWithImpl<$Res>
    extends _$FetchUserStateCopyWithImpl<$Res, _$FetchAllUserLoadingImpl>
    implements _$$FetchAllUserLoadingImplCopyWith<$Res> {
  __$$FetchAllUserLoadingImplCopyWithImpl(_$FetchAllUserLoadingImpl _value,
      $Res Function(_$FetchAllUserLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchAllUserLoadingImpl
    with DiagnosticableTreeMixin
    implements FetchAllUserLoading {
  const _$FetchAllUserLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FetchUserState.fetchUsersloading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'FetchUserState.fetchUsersloading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAllUserLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUsersloading,
    required TResult Function(List<User> users) fetchUsers,
    required TResult Function(NetworkExceptions error) fetchUsersError,
    required TResult Function() sendLocation,
    required TResult Function() sendLocationError,
  }) {
    return fetchUsersloading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchUsersloading,
    TResult? Function(List<User> users)? fetchUsers,
    TResult? Function(NetworkExceptions error)? fetchUsersError,
    TResult? Function()? sendLocation,
    TResult? Function()? sendLocationError,
  }) {
    return fetchUsersloading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUsersloading,
    TResult Function(List<User> users)? fetchUsers,
    TResult Function(NetworkExceptions error)? fetchUsersError,
    TResult Function()? sendLocation,
    TResult Function()? sendLocationError,
    required TResult orElse(),
  }) {
    if (fetchUsersloading != null) {
      return fetchUsersloading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAllUserLoading value) fetchUsersloading,
    required TResult Function(FetchAllUserSuccess value) fetchUsers,
    required TResult Function(FetchAllUserError value) fetchUsersError,
    required TResult Function(SendUserLocationSuccess value) sendLocation,
    required TResult Function(SendUserLocationError value) sendLocationError,
  }) {
    return fetchUsersloading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAllUserLoading value)? fetchUsersloading,
    TResult? Function(FetchAllUserSuccess value)? fetchUsers,
    TResult? Function(FetchAllUserError value)? fetchUsersError,
    TResult? Function(SendUserLocationSuccess value)? sendLocation,
    TResult? Function(SendUserLocationError value)? sendLocationError,
  }) {
    return fetchUsersloading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAllUserLoading value)? fetchUsersloading,
    TResult Function(FetchAllUserSuccess value)? fetchUsers,
    TResult Function(FetchAllUserError value)? fetchUsersError,
    TResult Function(SendUserLocationSuccess value)? sendLocation,
    TResult Function(SendUserLocationError value)? sendLocationError,
    required TResult orElse(),
  }) {
    if (fetchUsersloading != null) {
      return fetchUsersloading(this);
    }
    return orElse();
  }
}

abstract class FetchAllUserLoading implements FetchUserState {
  const factory FetchAllUserLoading() = _$FetchAllUserLoadingImpl;
}

/// @nodoc
abstract class _$$FetchAllUserSuccessImplCopyWith<$Res> {
  factory _$$FetchAllUserSuccessImplCopyWith(_$FetchAllUserSuccessImpl value,
          $Res Function(_$FetchAllUserSuccessImpl) then) =
      __$$FetchAllUserSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<User> users});
}

/// @nodoc
class __$$FetchAllUserSuccessImplCopyWithImpl<$Res>
    extends _$FetchUserStateCopyWithImpl<$Res, _$FetchAllUserSuccessImpl>
    implements _$$FetchAllUserSuccessImplCopyWith<$Res> {
  __$$FetchAllUserSuccessImplCopyWithImpl(_$FetchAllUserSuccessImpl _value,
      $Res Function(_$FetchAllUserSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$FetchAllUserSuccessImpl(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

class _$FetchAllUserSuccessImpl
    with DiagnosticableTreeMixin
    implements FetchAllUserSuccess {
  const _$FetchAllUserSuccessImpl({required final List<User> users})
      : _users = users;

  final List<User> _users;
  @override
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FetchUserState.fetchUsers(users: $users)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FetchUserState.fetchUsers'))
      ..add(DiagnosticsProperty('users', users));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAllUserSuccessImpl &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAllUserSuccessImplCopyWith<_$FetchAllUserSuccessImpl> get copyWith =>
      __$$FetchAllUserSuccessImplCopyWithImpl<_$FetchAllUserSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUsersloading,
    required TResult Function(List<User> users) fetchUsers,
    required TResult Function(NetworkExceptions error) fetchUsersError,
    required TResult Function() sendLocation,
    required TResult Function() sendLocationError,
  }) {
    return fetchUsers(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchUsersloading,
    TResult? Function(List<User> users)? fetchUsers,
    TResult? Function(NetworkExceptions error)? fetchUsersError,
    TResult? Function()? sendLocation,
    TResult? Function()? sendLocationError,
  }) {
    return fetchUsers?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUsersloading,
    TResult Function(List<User> users)? fetchUsers,
    TResult Function(NetworkExceptions error)? fetchUsersError,
    TResult Function()? sendLocation,
    TResult Function()? sendLocationError,
    required TResult orElse(),
  }) {
    if (fetchUsers != null) {
      return fetchUsers(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAllUserLoading value) fetchUsersloading,
    required TResult Function(FetchAllUserSuccess value) fetchUsers,
    required TResult Function(FetchAllUserError value) fetchUsersError,
    required TResult Function(SendUserLocationSuccess value) sendLocation,
    required TResult Function(SendUserLocationError value) sendLocationError,
  }) {
    return fetchUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAllUserLoading value)? fetchUsersloading,
    TResult? Function(FetchAllUserSuccess value)? fetchUsers,
    TResult? Function(FetchAllUserError value)? fetchUsersError,
    TResult? Function(SendUserLocationSuccess value)? sendLocation,
    TResult? Function(SendUserLocationError value)? sendLocationError,
  }) {
    return fetchUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAllUserLoading value)? fetchUsersloading,
    TResult Function(FetchAllUserSuccess value)? fetchUsers,
    TResult Function(FetchAllUserError value)? fetchUsersError,
    TResult Function(SendUserLocationSuccess value)? sendLocation,
    TResult Function(SendUserLocationError value)? sendLocationError,
    required TResult orElse(),
  }) {
    if (fetchUsers != null) {
      return fetchUsers(this);
    }
    return orElse();
  }
}

abstract class FetchAllUserSuccess implements FetchUserState {
  const factory FetchAllUserSuccess({required final List<User> users}) =
      _$FetchAllUserSuccessImpl;

  List<User> get users;
  @JsonKey(ignore: true)
  _$$FetchAllUserSuccessImplCopyWith<_$FetchAllUserSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAllUserErrorImplCopyWith<$Res> {
  factory _$$FetchAllUserErrorImplCopyWith(_$FetchAllUserErrorImpl value,
          $Res Function(_$FetchAllUserErrorImpl) then) =
      __$$FetchAllUserErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NetworkExceptions error});

  $NetworkExceptionsCopyWith<$Res> get error;
}

/// @nodoc
class __$$FetchAllUserErrorImplCopyWithImpl<$Res>
    extends _$FetchUserStateCopyWithImpl<$Res, _$FetchAllUserErrorImpl>
    implements _$$FetchAllUserErrorImplCopyWith<$Res> {
  __$$FetchAllUserErrorImplCopyWithImpl(_$FetchAllUserErrorImpl _value,
      $Res Function(_$FetchAllUserErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FetchAllUserErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as NetworkExceptions,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NetworkExceptionsCopyWith<$Res> get error {
    return $NetworkExceptionsCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$FetchAllUserErrorImpl
    with DiagnosticableTreeMixin
    implements FetchAllUserError {
  const _$FetchAllUserErrorImpl({required this.error});

  @override
  final NetworkExceptions error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FetchUserState.fetchUsersError(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FetchUserState.fetchUsersError'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAllUserErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAllUserErrorImplCopyWith<_$FetchAllUserErrorImpl> get copyWith =>
      __$$FetchAllUserErrorImplCopyWithImpl<_$FetchAllUserErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUsersloading,
    required TResult Function(List<User> users) fetchUsers,
    required TResult Function(NetworkExceptions error) fetchUsersError,
    required TResult Function() sendLocation,
    required TResult Function() sendLocationError,
  }) {
    return fetchUsersError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchUsersloading,
    TResult? Function(List<User> users)? fetchUsers,
    TResult? Function(NetworkExceptions error)? fetchUsersError,
    TResult? Function()? sendLocation,
    TResult? Function()? sendLocationError,
  }) {
    return fetchUsersError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUsersloading,
    TResult Function(List<User> users)? fetchUsers,
    TResult Function(NetworkExceptions error)? fetchUsersError,
    TResult Function()? sendLocation,
    TResult Function()? sendLocationError,
    required TResult orElse(),
  }) {
    if (fetchUsersError != null) {
      return fetchUsersError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAllUserLoading value) fetchUsersloading,
    required TResult Function(FetchAllUserSuccess value) fetchUsers,
    required TResult Function(FetchAllUserError value) fetchUsersError,
    required TResult Function(SendUserLocationSuccess value) sendLocation,
    required TResult Function(SendUserLocationError value) sendLocationError,
  }) {
    return fetchUsersError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAllUserLoading value)? fetchUsersloading,
    TResult? Function(FetchAllUserSuccess value)? fetchUsers,
    TResult? Function(FetchAllUserError value)? fetchUsersError,
    TResult? Function(SendUserLocationSuccess value)? sendLocation,
    TResult? Function(SendUserLocationError value)? sendLocationError,
  }) {
    return fetchUsersError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAllUserLoading value)? fetchUsersloading,
    TResult Function(FetchAllUserSuccess value)? fetchUsers,
    TResult Function(FetchAllUserError value)? fetchUsersError,
    TResult Function(SendUserLocationSuccess value)? sendLocation,
    TResult Function(SendUserLocationError value)? sendLocationError,
    required TResult orElse(),
  }) {
    if (fetchUsersError != null) {
      return fetchUsersError(this);
    }
    return orElse();
  }
}

abstract class FetchAllUserError implements FetchUserState {
  const factory FetchAllUserError({required final NetworkExceptions error}) =
      _$FetchAllUserErrorImpl;

  NetworkExceptions get error;
  @JsonKey(ignore: true)
  _$$FetchAllUserErrorImplCopyWith<_$FetchAllUserErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendUserLocationSuccessImplCopyWith<$Res> {
  factory _$$SendUserLocationSuccessImplCopyWith(
          _$SendUserLocationSuccessImpl value,
          $Res Function(_$SendUserLocationSuccessImpl) then) =
      __$$SendUserLocationSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendUserLocationSuccessImplCopyWithImpl<$Res>
    extends _$FetchUserStateCopyWithImpl<$Res, _$SendUserLocationSuccessImpl>
    implements _$$SendUserLocationSuccessImplCopyWith<$Res> {
  __$$SendUserLocationSuccessImplCopyWithImpl(
      _$SendUserLocationSuccessImpl _value,
      $Res Function(_$SendUserLocationSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendUserLocationSuccessImpl
    with DiagnosticableTreeMixin
    implements SendUserLocationSuccess {
  const _$SendUserLocationSuccessImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FetchUserState.sendLocation()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'FetchUserState.sendLocation'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendUserLocationSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUsersloading,
    required TResult Function(List<User> users) fetchUsers,
    required TResult Function(NetworkExceptions error) fetchUsersError,
    required TResult Function() sendLocation,
    required TResult Function() sendLocationError,
  }) {
    return sendLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchUsersloading,
    TResult? Function(List<User> users)? fetchUsers,
    TResult? Function(NetworkExceptions error)? fetchUsersError,
    TResult? Function()? sendLocation,
    TResult? Function()? sendLocationError,
  }) {
    return sendLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUsersloading,
    TResult Function(List<User> users)? fetchUsers,
    TResult Function(NetworkExceptions error)? fetchUsersError,
    TResult Function()? sendLocation,
    TResult Function()? sendLocationError,
    required TResult orElse(),
  }) {
    if (sendLocation != null) {
      return sendLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAllUserLoading value) fetchUsersloading,
    required TResult Function(FetchAllUserSuccess value) fetchUsers,
    required TResult Function(FetchAllUserError value) fetchUsersError,
    required TResult Function(SendUserLocationSuccess value) sendLocation,
    required TResult Function(SendUserLocationError value) sendLocationError,
  }) {
    return sendLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAllUserLoading value)? fetchUsersloading,
    TResult? Function(FetchAllUserSuccess value)? fetchUsers,
    TResult? Function(FetchAllUserError value)? fetchUsersError,
    TResult? Function(SendUserLocationSuccess value)? sendLocation,
    TResult? Function(SendUserLocationError value)? sendLocationError,
  }) {
    return sendLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAllUserLoading value)? fetchUsersloading,
    TResult Function(FetchAllUserSuccess value)? fetchUsers,
    TResult Function(FetchAllUserError value)? fetchUsersError,
    TResult Function(SendUserLocationSuccess value)? sendLocation,
    TResult Function(SendUserLocationError value)? sendLocationError,
    required TResult orElse(),
  }) {
    if (sendLocation != null) {
      return sendLocation(this);
    }
    return orElse();
  }
}

abstract class SendUserLocationSuccess implements FetchUserState {
  const factory SendUserLocationSuccess() = _$SendUserLocationSuccessImpl;
}

/// @nodoc
abstract class _$$SendUserLocationErrorImplCopyWith<$Res> {
  factory _$$SendUserLocationErrorImplCopyWith(
          _$SendUserLocationErrorImpl value,
          $Res Function(_$SendUserLocationErrorImpl) then) =
      __$$SendUserLocationErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendUserLocationErrorImplCopyWithImpl<$Res>
    extends _$FetchUserStateCopyWithImpl<$Res, _$SendUserLocationErrorImpl>
    implements _$$SendUserLocationErrorImplCopyWith<$Res> {
  __$$SendUserLocationErrorImplCopyWithImpl(_$SendUserLocationErrorImpl _value,
      $Res Function(_$SendUserLocationErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendUserLocationErrorImpl
    with DiagnosticableTreeMixin
    implements SendUserLocationError {
  const _$SendUserLocationErrorImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FetchUserState.sendLocationError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'FetchUserState.sendLocationError'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendUserLocationErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUsersloading,
    required TResult Function(List<User> users) fetchUsers,
    required TResult Function(NetworkExceptions error) fetchUsersError,
    required TResult Function() sendLocation,
    required TResult Function() sendLocationError,
  }) {
    return sendLocationError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchUsersloading,
    TResult? Function(List<User> users)? fetchUsers,
    TResult? Function(NetworkExceptions error)? fetchUsersError,
    TResult? Function()? sendLocation,
    TResult? Function()? sendLocationError,
  }) {
    return sendLocationError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUsersloading,
    TResult Function(List<User> users)? fetchUsers,
    TResult Function(NetworkExceptions error)? fetchUsersError,
    TResult Function()? sendLocation,
    TResult Function()? sendLocationError,
    required TResult orElse(),
  }) {
    if (sendLocationError != null) {
      return sendLocationError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAllUserLoading value) fetchUsersloading,
    required TResult Function(FetchAllUserSuccess value) fetchUsers,
    required TResult Function(FetchAllUserError value) fetchUsersError,
    required TResult Function(SendUserLocationSuccess value) sendLocation,
    required TResult Function(SendUserLocationError value) sendLocationError,
  }) {
    return sendLocationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAllUserLoading value)? fetchUsersloading,
    TResult? Function(FetchAllUserSuccess value)? fetchUsers,
    TResult? Function(FetchAllUserError value)? fetchUsersError,
    TResult? Function(SendUserLocationSuccess value)? sendLocation,
    TResult? Function(SendUserLocationError value)? sendLocationError,
  }) {
    return sendLocationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAllUserLoading value)? fetchUsersloading,
    TResult Function(FetchAllUserSuccess value)? fetchUsers,
    TResult Function(FetchAllUserError value)? fetchUsersError,
    TResult Function(SendUserLocationSuccess value)? sendLocation,
    TResult Function(SendUserLocationError value)? sendLocationError,
    required TResult orElse(),
  }) {
    if (sendLocationError != null) {
      return sendLocationError(this);
    }
    return orElse();
  }
}

abstract class SendUserLocationError implements FetchUserState {
  const factory SendUserLocationError() = _$SendUserLocationErrorImpl;
}
