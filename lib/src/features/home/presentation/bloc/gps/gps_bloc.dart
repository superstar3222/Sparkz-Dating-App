import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

part 'gps_bloc.freezed.dart';
part 'gps_event.dart';
part 'gps_state.dart';

class GpsBloc extends Bloc<GpsEvent, GpsState> {
  late StreamSubscription gpsSubsciption;
  GpsBloc()
      : super(GpsState(isGpsEnabled: false, isGpsPermissionGranted: false)) {
    on<GpsEvent>((event, emit) {
      emit(GpsState(
        isGpsEnabled: event.isEnabled,
        isGpsPermissionGranted: event.checkGpsStatus,
      ));
      _initialize();
    });
  }

  Future<void> _initialize() async {
    final gpsInitStatus = await Future.wait([
      _checkGpsStatus(),
      _isPermissionGranted(),
    ]);
    add(GetGpsEvent(
      isEnabled: gpsInitStatus[0],
      checkGpsStatus: gpsInitStatus[1],
    ));
  }

  Future<bool> _isPermissionGranted() async {
    final isGranted = await Permission.location.isGranted;
    return isGranted;
  }

  Future<bool> _checkGpsStatus() async {
    bool isEnable = await Geolocator.isLocationServiceEnabled();

    gpsSubsciption = Geolocator.getServiceStatusStream().listen((event) {
      bool isEnabled = (event.index == 1) ? true : false;
      add(GetGpsEvent(
        isEnabled: isEnabled,
        checkGpsStatus: state.isGpsPermissionGranted,
      ));
    });
    return isEnable;
  }

  Future<void> askLocationPermission() async {
    final status = await Permission.location.request();
    switch (status) {
      case PermissionStatus.granted:
        add(GetGpsEvent(
          isEnabled: state.isGpsEnabled,
          checkGpsStatus: true,
        ));
        break;
      case PermissionStatus.denied:
      case PermissionStatus.restricted:
      case PermissionStatus.limited:
      case PermissionStatus.permanentlyDenied:
        add(GetGpsEvent(
          isEnabled: state.isGpsEnabled,
          checkGpsStatus: false,
        ));
        openAppSettings();
        break;
      default:
    }
  }
}
