part of 'interest_bloc.dart';

abstract class UserProfileEvent extends Equatable {
  const UserProfileEvent();

  @override
  List<Object> get props => [];
}

class CreateUserProfile extends UserProfileEvent {
  final String email, gender, about;
  final List<String> interests;

  const CreateUserProfile({
    required this.email,
    required this.gender,
    required this.about,
    required this.interests,
  });
}
