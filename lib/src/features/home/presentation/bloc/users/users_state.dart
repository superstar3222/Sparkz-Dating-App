part of 'users_bloc.dart';

@freezed
class FetchUserState with _$FetchUserState {
  const factory FetchUserState.fetchUsersloading() = FetchAllUserLoading;
  const factory FetchUserState.fetchUsers({required List<User> users}) =
      FetchAllUserSuccess;
  const factory FetchUserState.fetchUsersError(
      {required NetworkExceptions error}) = FetchAllUserError;
  const factory FetchUserState.sendLocation() = SendUserLocationSuccess;
  const factory FetchUserState.sendLocationError() = SendUserLocationError;
}
