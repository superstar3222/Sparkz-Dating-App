part of 'auth_bloc.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthenticationState {}

class AuthenticationLoading extends AuthenticationState {}

class LoginLoading extends AuthenticationState {}

class LoginSuccess extends AuthenticationState {
  final LoginResponse response;

  const LoginSuccess({required this.response});
}

class LoginError extends AuthenticationState {
  final NetworkExceptions error;
  const LoginError({required this.error});
}

class SignupLoading extends AuthenticationState {}

class SignupError extends AuthenticationState {
  final NetworkExceptions error;

  const SignupError({required this.error});
}

class SignupSuccess extends AuthenticationState {
  final User data;

  const SignupSuccess({required this.data});
}

class ForgotPasswordLoading extends AuthenticationState {}

class ForgotPasswordError extends AuthenticationState {
  final NetworkExceptions error;
  const ForgotPasswordError({required this.error});
}

class ForgotPasswordSuccess extends AuthenticationState {}

class VerifyOtpError extends AuthenticationState {
  final NetworkExceptions error;

  const VerifyOtpError({required this.error});
}

class VerifyOtpLoading extends AuthenticationState {}

class VerifyOtpSuccess extends AuthenticationState {
  final String data;
  const VerifyOtpSuccess({required this.data});
}

class ResetPasswordLoading extends AuthenticationState {}

class ResetPasswordError extends AuthenticationState {
  final NetworkExceptions error;
  const ResetPasswordError({required this.error});
}

class ResetPasswordSuccess extends AuthenticationState {}

class ResendOtpError extends AuthenticationState {
  final NetworkExceptions error;
  const ResendOtpError({required this.error});
}

class ResendOtpLoading extends AuthenticationState {}

class ResendOtpSuccess extends AuthenticationState {}

class LogoutLoading extends AuthenticationState {}

class LogoutSucess extends AuthenticationState {
  final String message;

  const LogoutSucess({required this.message});
}

class LogoutError extends AuthenticationState {
  final NetworkExceptions error;
  const LogoutError({required this.error});
}
