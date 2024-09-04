import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dating_app/src/auth/data/datasource/auth_info_remote_datasource.dart';
import 'package:dating_app/src/auth/data/datasource/auth_remote_data_source.dart';
import 'package:dating_app/src/auth/data/repository/auth_info_repository.dart';
import 'package:dating_app/src/auth/data/repository/auth_repository.dart';
import 'package:dating_app/src/startup/presentation/bloc/onboarding_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../src/auth/presentation/bloc/auth_bloc/auth_bloc.dart';
import '../../../src/auth/presentation/bloc/user_info_bloc/interest_bloc.dart';
import '../../../src/features/cubit/bottom_navbar/bottom_navigation_cubit.dart';
import '../../../src/features/cubit/internet_connection/internet_connection_cubit.dart';
import '../../../src/features/home/data/datasources/user_remote_data_source.dart';
import '../../../src/features/home/data/repository/user_repository.dart';
import '../../../src/features/home/presentation/bloc/gps/gps_bloc.dart';
import '../../../src/features/home/presentation/bloc/location/location_bloc.dart';
import '../../../src/features/home/presentation/bloc/users/users_bloc.dart';
import '../network/dio_client.dart';

GetIt serviceLocator = GetIt.instance;

Future<void> setUpServiceLocator() async {
  // Blocs
  serviceLocator.registerFactory<AuthBloc>(() => AuthBloc());
  serviceLocator.registerFactory<OnboardingBloc>(() => OnboardingBloc());
  serviceLocator.registerFactory<FetchUserBloc>(() => FetchUserBloc());
  serviceLocator.registerFactory<InterestBloc>(() => InterestBloc());
  serviceLocator.registerFactory<GpsBloc>(() => GpsBloc());
  serviceLocator.registerFactory<LocationBloc>(() => LocationBloc());

  // Cubit
  serviceLocator
      .registerFactory<BottomNavigationCubit>(() => BottomNavigationCubit());
  serviceLocator.registerFactory<InternetConnectionCubit>(
      () => InternetConnectionCubit(connectivity: serviceLocator()));

  // Data Source
  serviceLocator
      .registerFactory<AuthRemoteDataSource>(() => AuthRemoteDataSourceImpl());
  serviceLocator
      .registerFactory<UserRemoteDataSource>(() => UserRemoteDataSourceImpl());
  serviceLocator.registerFactory<AuthInfoRemoteDataSource>(
      () => AuthInfoRemoteDataSourceImpl());

  // Repositories
  serviceLocator.registerFactory<AuthRepository>(() => AuthRepository());
  serviceLocator
      .registerFactory<AuthInfoRepository>(() => AuthInfoRepository());
  serviceLocator.registerFactory<UserRepository>(() => UserRepository());

  // Dio
  serviceLocator.registerLazySingleton<NetworkService>(() => NetworkService());
  serviceLocator.registerLazySingleton<Dio>(() => Dio());
  serviceLocator.registerLazySingleton<Connectivity>(() => Connectivity());
}
