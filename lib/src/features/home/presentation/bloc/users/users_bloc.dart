import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../app/core/config/injection_container.dart';
import '../../../../../../app/core/core.dart';
import '../../../../../../app/core/logger/app_logger.dart';
import '../../../../../../app/core/network/dio_exception.dart';
import '../../../../../auth/data/models/user.dart';
import '../../../data/repository/user_repository.dart';

part 'users_bloc.freezed.dart';
part 'users_event.dart';
part 'users_state.dart';

class FetchUserBloc extends Bloc<FetchUserEvent, FetchUserState> {
  FetchUserBloc() : super(const FetchUserState.fetchUsersloading()) {
    on<FetchUserEvent>((event, emit) => _getAllUsers(event, emit));
    on<SendUserLocationEvent>((event, emit) => _sendLocation(event, emit));
  }

  _getAllUsers(FetchUserEvent event, emit) async {
    emit(const FetchUserState.fetchUsersloading());
    Log.debug("Loading");
    final response = await serviceLocator<UserRepository>().getAllUsers();
    response
        .fold((failure) => emit(FetchUserState.fetchUsersError(error: failure)),
            (success) {
      FetchUserState.fetchUsers(users: success);
      emit(FetchUserState.fetchUsers(users: success));
    });
  }

  _sendLocation(SendUserLocationEvent event, emit) async {
    final response = await serviceLocator<UserRepository>().sendLocation(event);
    response.fold((failure) => emit(const FetchUserState.sendLocationError()),
        (success) {
      const FetchUserState.sendLocation();
      emit(const FetchUserState.sendLocation());
    });
  }
}
