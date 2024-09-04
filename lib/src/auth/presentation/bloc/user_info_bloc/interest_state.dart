part of 'interest_bloc.dart';

abstract class UserProfileState extends Equatable {
  const UserProfileState();

  @override
  List<Object> get props => [];
}

class GetUserInfoInitial extends UserProfileState {}

class CreateUserProfileLoading extends UserProfileState {}

class CreateUserProfileSuccess extends UserProfileState {
  final String message;
  const CreateUserProfileSuccess({required this.message});
}

class CreateUserProfileError extends UserProfileState {
  final NetworkExceptions error;
  const CreateUserProfileError({required this.error});
}
