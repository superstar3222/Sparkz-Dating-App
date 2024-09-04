import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    super.onEvent(bloc, event);
    debugPrint('${bloc.runtimeType} $event');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    debugPrint('${bloc.runtimeType} $error');
  }

  @override
  void onTransition(
    Bloc<dynamic, dynamic> bloc,
    Transition<dynamic, dynamic> transition,
  ) {
    super.onTransition(bloc, transition);
    debugPrint('${bloc.runtimeType} $transition');
  }

  @override
  void onCreate(BlocBase<dynamic> bloc) {
    super.onCreate(bloc);
    debugPrint('Created ${bloc.runtimeType}');
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    super.onClose(bloc);
  }
}
