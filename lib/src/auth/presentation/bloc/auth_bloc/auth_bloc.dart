import 'package:dating_app/app/core/core.dart';
import 'package:dating_app/src/auth/data/models/login_response.dart';
import 'package:dating_app/src/auth/data/models/user.dart';
import 'package:dating_app/src/auth/data/repository/auth_repository.dart';
import 'package:equatable/equatable.dart';

import '../../../../../app/core/config/injection_container.dart';
import '../../../../../app/core/network/dio_exception.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthenticationState> {
  final _authRepoImpl = serviceLocator<AuthRepository>();
  AuthBloc() : super(AuthInitial()) {
    on<LoginEvent>((event, emit) => _login(event, emit));
    on<SignupEvent>((event, emit) => _signup(event, emit));
    on<VerifyOtpEvent>((event, emit) => _verifyOtp(event, emit));
    on<ResendOtpEvent>((event, emit) => _resendOtp(event, emit));
    on<ForgotPasswordEvent>((event, emit) => _forgotPassword(event, emit));
    on<ResetPasswordEvent>((event, emit) => _resetPassword(event, emit));
    on<LogoutEvent>((event, emit) => _logout(event, emit));
  }

  _login(LoginEvent event, emit) async {
    emit(LoginLoading());
    final response = await _authRepoImpl.login(event);
    // await _authRepoImpl.checkToken();
    response.fold(
      (l) => emit(LoginError(error: l)),
      (r) => emit(LoginSuccess(response: r)),
    );
  }

  _signup(SignupEvent event, emit) async {
    emit(SignupLoading());
    final response = await _authRepoImpl.signup(event);
    response.fold(
      (l) => emit(SignupError(error: l)),
      (r) => emit(SignupSuccess(data: r)),
    );
  }

  _verifyOtp(VerifyOtpEvent event, emit) async {
    emit(VerifyOtpLoading());
    final response = await _authRepoImpl.verifyOtp(event);
    response.fold(
      (l) => emit(VerifyOtpError(error: l)),
      (r) => emit(VerifyOtpSuccess(data: r)),
    );
  }

  _resendOtp(ResendOtpEvent event, emit) async {
    emit(ResendOtpLoading());
    final response = await _authRepoImpl.resendOtp(event);
    response.fold(
      (l) => emit(ResendOtpError(error: l)),
      (r) => emit(ResendOtpSuccess()),
    );
  }

  _forgotPassword(ForgotPasswordEvent event, emit) async {
    emit(ForgotPasswordLoading());
    final response = await _authRepoImpl.forgotPassword(event);
    response.fold(
      (l) => emit(ForgotPasswordError(error: l)),
      (r) => emit(ForgotPasswordSuccess()),
    );
  }

  _resetPassword(ResetPasswordEvent event, emit) async {
    emit(ResetPasswordLoading());
    final response = await _authRepoImpl.resetPassword(event);
    response.fold(
      (l) => emit(ResetPasswordError(error: l)),
      (r) => emit(ResetPasswordSuccess()),
    );
  }

  _logout(LogoutEvent event, emit) async {
    emit(LogoutLoading());
    final response = await _authRepoImpl.logout(event);
    response.fold(
      (l) => emit(LogoutError(error: l)),
      (r) => emit(LogoutSucess(message: r)),
    );
  }
}
