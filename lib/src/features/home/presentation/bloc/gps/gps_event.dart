part of 'gps_bloc.dart';

@freezed
class GpsEvent with _$GpsEvent {
  const factory GpsEvent.initial({
    required bool isEnabled,
    required bool checkGpsStatus,
  }) = GetGpsEvent;
}
