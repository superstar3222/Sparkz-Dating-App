part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class SignupEvent extends AuthEvent {
  final String firstName, lastName, email, password, location;

  const SignupEvent({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.location,
  });
}

class LoginEvent extends AuthEvent {
  final String email, password;

  const LoginEvent({required this.email, required this.password});
}

class VerifyOtpEvent extends AuthEvent {
  final String otp, email;
  const VerifyOtpEvent({required this.otp, required this.email});
}

class ResendOtpEvent extends AuthEvent {
  final String email;
  const ResendOtpEvent({required this.email});
}

class ForgotPasswordEvent extends AuthEvent {
  final String email;
  const ForgotPasswordEvent({required this.email});
}

class ResetPasswordEvent extends AuthEvent {
  final String otp, email, password;
  const ResetPasswordEvent(
      {required this.otp, required this.password, required this.email});
}

class LogoutEvent extends AuthEvent {}
