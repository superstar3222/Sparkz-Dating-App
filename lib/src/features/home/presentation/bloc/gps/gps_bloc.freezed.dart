// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gps_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GpsEvent {
  bool get isEnabled => throw _privateConstructorUsedError;
  bool get checkGpsStatus => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isEnabled, bool checkGpsStatus) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isEnabled, bool checkGpsStatus)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isEnabled, bool checkGpsStatus)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetGpsEvent value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetGpsEvent value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetGpsEvent value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GpsEventCopyWith<GpsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GpsEventCopyWith<$Res> {
  factory $GpsEventCopyWith(GpsEvent value, $Res Function(GpsEvent) then) =
      _$GpsEventCopyWithImpl<$Res, GpsEvent>;
  @useResult
  $Res call({bool isEnabled, bool checkGpsStatus});
}

/// @nodoc
class _$GpsEventCopyWithImpl<$Res, $Val extends GpsEvent>
    implements $GpsEventCopyWith<$Res> {
  _$GpsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
    Object? checkGpsStatus = null,
  }) {
    return _then(_value.copyWith(
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      checkGpsStatus: null == checkGpsStatus
          ? _value.checkGpsStatus
          : checkGpsStatus // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetGpsEventImplCopyWith<$Res>
    implements $GpsEventCopyWith<$Res> {
  factory _$$GetGpsEventImplCopyWith(
          _$GetGpsEventImpl value, $Res Function(_$GetGpsEventImpl) then) =
      __$$GetGpsEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isEnabled, bool checkGpsStatus});
}

/// @nodoc
class __$$GetGpsEventImplCopyWithImpl<$Res>
    extends _$GpsEventCopyWithImpl<$Res, _$GetGpsEventImpl>
    implements _$$GetGpsEventImplCopyWith<$Res> {
  __$$GetGpsEventImplCopyWithImpl(
      _$GetGpsEventImpl _value, $Res Function(_$GetGpsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
    Object? checkGpsStatus = null,
  }) {
    return _then(_$GetGpsEventImpl(
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      checkGpsStatus: null == checkGpsStatus
          ? _value.checkGpsStatus
          : checkGpsStatus // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetGpsEventImpl implements GetGpsEvent {
  const _$GetGpsEventImpl(
      {required this.isEnabled, required this.checkGpsStatus});

  @override
  final bool isEnabled;
  @override
  final bool checkGpsStatus;

  @override
  String toString() {
    return 'GpsEvent.initial(isEnabled: $isEnabled, checkGpsStatus: $checkGpsStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetGpsEventImpl &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.checkGpsStatus, checkGpsStatus) ||
                other.checkGpsStatus == checkGpsStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isEnabled, checkGpsStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetGpsEventImplCopyWith<_$GetGpsEventImpl> get copyWith =>
      __$$GetGpsEventImplCopyWithImpl<_$GetGpsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isEnabled, bool checkGpsStatus) initial,
  }) {
    return initial(isEnabled, checkGpsStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isEnabled, bool checkGpsStatus)? initial,
  }) {
    return initial?.call(isEnabled, checkGpsStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isEnabled, bool checkGpsStatus)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isEnabled, checkGpsStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetGpsEvent value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetGpsEvent value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetGpsEvent value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class GetGpsEvent implements GpsEvent {
  const factory GetGpsEvent(
      {required final bool isEnabled,
      required final bool checkGpsStatus}) = _$GetGpsEventImpl;

  @override
  bool get isEnabled;
  @override
  bool get checkGpsStatus;
  @override
  @JsonKey(ignore: true)
  _$$GetGpsEventImplCopyWith<_$GetGpsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GpsState {
  bool get isGpsEnabled => throw _privateConstructorUsedError;
  bool get isGpsPermissionGranted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GpsStateCopyWith<GpsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GpsStateCopyWith<$Res> {
  factory $GpsStateCopyWith(GpsState value, $Res Function(GpsState) then) =
      _$GpsStateCopyWithImpl<$Res, GpsState>;
  @useResult
  $Res call({bool isGpsEnabled, bool isGpsPermissionGranted});
}

/// @nodoc
class _$GpsStateCopyWithImpl<$Res, $Val extends GpsState>
    implements $GpsStateCopyWith<$Res> {
  _$GpsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isGpsEnabled = null,
    Object? isGpsPermissionGranted = null,
  }) {
    return _then(_value.copyWith(
      isGpsEnabled: null == isGpsEnabled
          ? _value.isGpsEnabled
          : isGpsEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isGpsPermissionGranted: null == isGpsPermissionGranted
          ? _value.isGpsPermissionGranted
          : isGpsPermissionGranted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GpsInitialStateImplCopyWith<$Res>
    implements $GpsStateCopyWith<$Res> {
  factory _$$GpsInitialStateImplCopyWith(_$GpsInitialStateImpl value,
          $Res Function(_$GpsInitialStateImpl) then) =
      __$$GpsInitialStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isGpsEnabled, bool isGpsPermissionGranted});
}

/// @nodoc
class __$$GpsInitialStateImplCopyWithImpl<$Res>
    extends _$GpsStateCopyWithImpl<$Res, _$GpsInitialStateImpl>
    implements _$$GpsInitialStateImplCopyWith<$Res> {
  __$$GpsInitialStateImplCopyWithImpl(
      _$GpsInitialStateImpl _value, $Res Function(_$GpsInitialStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isGpsEnabled = null,
    Object? isGpsPermissionGranted = null,
  }) {
    return _then(_$GpsInitialStateImpl(
      isGpsEnabled: null == isGpsEnabled
          ? _value.isGpsEnabled
          : isGpsEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isGpsPermissionGranted: null == isGpsPermissionGranted
          ? _value.isGpsPermissionGranted
          : isGpsPermissionGranted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GpsInitialStateImpl extends GpsInitialState {
  _$GpsInitialStateImpl(
      {required this.isGpsEnabled, required this.isGpsPermissionGranted})
      : super._();

  @override
  final bool isGpsEnabled;
  @override
  final bool isGpsPermissionGranted;

  @override
  String toString() {
    return 'GpsState(isGpsEnabled: $isGpsEnabled, isGpsPermissionGranted: $isGpsPermissionGranted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GpsInitialStateImpl &&
            (identical(other.isGpsEnabled, isGpsEnabled) ||
                other.isGpsEnabled == isGpsEnabled) &&
            (identical(other.isGpsPermissionGranted, isGpsPermissionGranted) ||
                other.isGpsPermissionGranted == isGpsPermissionGranted));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isGpsEnabled, isGpsPermissionGranted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GpsInitialStateImplCopyWith<_$GpsInitialStateImpl> get copyWith =>
      __$$GpsInitialStateImplCopyWithImpl<_$GpsInitialStateImpl>(
          this, _$identity);
}

abstract class GpsInitialState extends GpsState {
  factory GpsInitialState(
      {required final bool isGpsEnabled,
      required final bool isGpsPermissionGranted}) = _$GpsInitialStateImpl;
  GpsInitialState._() : super._();

  @override
  bool get isGpsEnabled;
  @override
  bool get isGpsPermissionGranted;
  @override
  @JsonKey(ignore: true)
  _$$GpsInitialStateImplCopyWith<_$GpsInitialStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
