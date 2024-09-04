part of 'gps_bloc.dart';

@freezed
class GpsState with _$GpsState {
  factory GpsState({
    required bool isGpsEnabled,
    required bool isGpsPermissionGranted,
  }) = GpsInitialState;
  GpsState._();

  bool get isAllGranted => isGpsEnabled && isGpsPermissionGranted;
}
