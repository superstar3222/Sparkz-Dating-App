import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dating_app/app/common/common.dart';
import 'package:dating_app/app/core/core.dart';
import 'package:dating_app/src/auth/data/datasource/auth_remote_data_source.dart';
import 'package:dating_app/src/auth/data/models/login_response.dart';
import 'package:dating_app/src/auth/data/models/user.dart';
import 'package:dating_app/src/auth/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:dio/dio.dart';

import '../../../../app/core/network/dio_exception.dart';

class AuthRepository {
  AuthRepository({AuthRemoteDataSource? authRemoteDataSource})
      : _authRemoteDataSourceImpl =
            authRemoteDataSource ?? AuthRemoteDataSourceImpl();
  final AuthRemoteDataSource _authRemoteDataSourceImpl;

  ResultFuture<User> signup(SignupEvent event) async {
    try {
      final response = await _authRemoteDataSourceImpl.createUser(event);
      log('SIGNUP REPO SUCCESSFULL');
      return Right(User.fromJson(response.data['user']));
    } catch (error) {
      log(error.toString());
      return Left(NetworkExceptions.getDioException(error));
    }
  }

  ResultFuture<LoginResponse> login(LoginEvent event) async {
    try {
      final response = await _authRemoteDataSourceImpl.loginUser(event);
      // final data = jsonEncode(response.data['token']);
      // await LocalDataStorage.instance.setToken(data);
      return Right(LoginResponse.fromJson(response.data));
    } catch (error) {
      log(error.toString());
      return Left(NetworkExceptions.getDioException(error));
    }
  }

  ResultFuture<Response> checkToken() async {
    try {
      final response = await _authRemoteDataSourceImpl.checkToken();
      await LocalDataStorage.instance.setuserInfo(response.data);
      log(response.toString());
      return Right(response);
    } catch (error) {
      log(error.toString());
      return Left(NetworkExceptions.getDioException(error));
    }
  }

  ResultFuture<String> verifyOtp(VerifyOtpEvent event) async {
    try {
      final response = await _authRemoteDataSourceImpl.verifyOtp(event);
      log(response.data.toString());
      return Right(response.data['message']);
    } catch (error) {
      log(error.toString());
      return Left(NetworkExceptions.getDioException(error));
    }
  }

  ResultFuture<String> resendOtp(ResendOtpEvent event) async {
    try {
      final response = await _authRemoteDataSourceImpl.resendOtp(event);
      return Right(response.data['message']);
    } catch (error) {
      debugPrint(error.toString());
      return Left(NetworkExceptions.getDioException(error));
    }
  }

  ResultFuture<String> forgotPassword(ForgotPasswordEvent event) async {
    try {
      final response = await _authRemoteDataSourceImpl.forgotPassword(event);
      return Right(response.data);
    } catch (error) {
      debugPrint(error.toString());
      return Left(NetworkExceptions.getDioException(error));
    }
  }

  ResultFuture<String> resetPassword(ResetPasswordEvent event) async {
    try {
      final response = await _authRemoteDataSourceImpl.resetPassword(event);
      return Right(response.data);
    } catch (error) {
      return Left(NetworkExceptions.getDioException(error));
    }
  }

  ResultFuture<String> logout(LogoutEvent event) async {
    try {
      final response = await _authRemoteDataSourceImpl.logoutUsers();
      return Right(response.data);
    } catch (error) {
      return Left(NetworkExceptions.getDioException(error));
    }
  }
}
