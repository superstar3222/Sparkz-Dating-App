import 'package:dating_app/app/core/network/dio_client.dart';
import 'package:dating_app/src/auth/presentation/bloc/user_info_bloc/interest_bloc.dart';
import 'package:dio/dio.dart';

abstract class AuthInfoRemoteDataSource {
  Future<Response> createUserProfile(CreateUserProfile event);
}

class AuthInfoRemoteDataSourceImpl extends AuthInfoRemoteDataSource {
  @override
  Future<Response> createUserProfile(CreateUserProfile event) async {
    return await NetworkService.postRequestHanlder(
      '/user/userProfile',
      data: {
        'email': event.email,
        'gender': event.gender,
        'interests': event.interests,
        'about': event.about,
      },
    );
  }
}
