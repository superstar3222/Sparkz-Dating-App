part of 'users_bloc.dart';

@freezed
class FetchUserEvent with _$FetchUserEvent {
  const factory FetchUserEvent.fetchNearbyUsers() = _FetchNearbyUserEvent;
  const factory FetchUserEvent.sendUserLocation({
    required String id,
    required String location,
  }) = SendUserLocationEvent;
}
