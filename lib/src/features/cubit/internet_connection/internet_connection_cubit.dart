import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'internet_connection_state.dart';

class InternetConnectionCubit extends Cubit<InternetConnectionState> {
  final Connectivity connectivity;
  late StreamSubscription connectivityStreamSubscription;

  InternetConnectionCubit({required this.connectivity})
      : super(InternetLoading()) {
    connectivityStreamSubscription =
        connectivity.onConnectivityChanged.listen((connectivityResult) {
      if (connectivityResult == ConnectivityResult.wifi) {
        emitInternetConnected(ConnectionType.wifi);
      } else if (connectivityResult == ConnectivityResult.mobile) {
        emitInternetConnected(ConnectionType.mobile);
      } else if (connectivityResult == ConnectivityResult.none) {
        emitInternetDisconnected();
      }
    });
  }

  void emitInternetConnected(ConnectionType connectionType) =>
      emit(InternetConnected(connectionType: connectionType));

  void emitInternetDisconnected() => emit(InternetDisconnected());

  @override
  Future<void> close() {
    connectivityStreamSubscription.cancel();
    return super.close();
  }
}
