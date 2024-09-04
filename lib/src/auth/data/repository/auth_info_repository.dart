import 'package:dartz/dartz.dart';
import 'package:dating_app/app/common/utils/typedef.dart';
import 'package:dating_app/src/auth/data/datasource/auth_info_remote_datasource.dart';
import 'package:dating_app/src/auth/presentation/bloc/user_info_bloc/interest_bloc.dart';

import '../../../../app/core/network/dio_exception.dart';

class AuthInfoRepository {
  AuthInfoRepository(
      {AuthInfoRemoteDataSourceImpl? authInfoRemoteDataSourceImpl})
      : _authInfoRemoteDataSourceImpl =
            authInfoRemoteDataSourceImpl ?? AuthInfoRemoteDataSourceImpl();
  final AuthInfoRemoteDataSourceImpl _authInfoRemoteDataSourceImpl;

  ResultFuture<String> userProfile(CreateUserProfile event) async {
    try {
      final response =
          await _authInfoRemoteDataSourceImpl.createUserProfile(event);
      return Right(response.toString());
    } catch (error) {
      return Left(NetworkExceptions.getDioException(error));
    }
  }
}
