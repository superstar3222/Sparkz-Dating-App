//import library
import 'dart:convert';
import 'dart:io';

import 'package:dating_app/app/core/services/auth_local_data_source.dart';
import 'package:dating_app/src/auth/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:dio/dio.dart';

import '../../../../app/core/network/dio_client.dart';

abstract class AuthRemoteDataSource {
  Future<Response> createUser(SignupEvent event);
  Future<Response> loginUser(LoginEvent event);
  Future<Response> verifyOtp(VerifyOtpEvent event);
  Future<Response> resendOtp(ResendOtpEvent event);
  Future<Response> checkToken();
  Future<Response> forgotPassword(ForgotPasswordEvent event);
  Future<Response> resetPassword(ResetPasswordEvent event);
  Future<Response> logoutUsers();
}

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  @override
  Future<Response> createUser(SignupEvent event) async {
    var register = {
      'firstName': event.firstName,
      'lastName': event.lastName,
      'email': event.email,
      'password': event.password,
      'location': event.location,
    };
    final data = jsonEncode(register);
    return await NetworkService.postStringRequestHanlder(
      '/auth/register',
      data: data,
    );
  }

  @override
  Future<Response> loginUser(LoginEvent event) async {
    return await NetworkService.postRequestHanlder(
      '/auth/login',
      data: {
        'email': event.email,
        'password': event.password,
      },
    );
  }

  @override
  Future<Response> checkToken() async {
    var token = await LocalDataStorage.instance.getToken();
    if (token == '') {
      await LocalDataStorage.instance.setToken('');
    }
    var request = await NetworkService.postTokenHandler('/auth/checkToken',
        options: Options(headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
          'x-auth-token': token,
        }));
    var response = jsonDecode(request.data);
    return response;
  }

  @override
  Future<Response> verifyOtp(VerifyOtpEvent event) async {
    var verifyOtp = {
      'otp': event.otp,
      'email': event.email,
    };
    final data = jsonEncode(verifyOtp);
    return await NetworkService.postStringRequestHanlder(
      '/auth/verifyOtp',
      data: data,
    );
  }

  @override
  Future<Response> resendOtp(ResendOtpEvent event) async {
    return await NetworkService.postRequestHanlder(
      '/auth/resendOtp',
      data: {
        'email': event.email,
      },
    );
  }

  @override
  Future<Response> forgotPassword(ForgotPasswordEvent event) async {
    return await NetworkService.postRequestHanlder(
      '/auth/forgotPassword',
      data: {
        'email': event.email,
      },
    );
  }

  @override
  Future<Response> resetPassword(ResetPasswordEvent event) async {
    return await NetworkService.postRequestHanlder(
      '/auth/resetPassword',
      data: {
        'otp': event.otp,
        'password': event.password,
        'email': event.email,
      },
    );
  }

  @override
  Future<Response> logoutUsers() async {
    return await NetworkService.getRequestHandler('/auth/logout');
  }
}
