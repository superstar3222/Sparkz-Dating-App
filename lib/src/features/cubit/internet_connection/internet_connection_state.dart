part of 'internet_connection_cubit.dart';

enum ConnectionType {
  wifi,
  mobile,
}

abstract class InternetConnectionState {}

class InternetLoading extends InternetConnectionState {}

class InternetConnected extends InternetConnectionState {
  final ConnectionType connectionType;

  InternetConnected({required this.connectionType});
}

class InternetDisconnected extends InternetConnectionState {}
