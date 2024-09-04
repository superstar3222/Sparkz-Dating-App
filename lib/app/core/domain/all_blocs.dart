import 'package:dating_app/app/core/config/injection_container.dart';
import 'package:dating_app/app/core/core.dart';
import 'package:dating_app/src/auth/presentation/bloc/auth_bloc/auth_bloc.dart';

import '../../../src/auth/presentation/bloc/user_info_bloc/interest_bloc.dart';
import '../../../src/features/home/presentation/bloc/gps/gps_bloc.dart';
import '../../../src/features/home/presentation/bloc/location/location_bloc.dart';
import '../../../src/startup/presentation/bloc/onboarding_bloc.dart';

class AppBlocProviders {
  static get allBlocProviders => [
        // Onboarding bloc
        BlocProvider<OnboardingBloc>(
            create: (context) => serviceLocator<OnboardingBloc>()),

        // Authenticaton Bloc
        BlocProvider<AuthBloc>(create: (context) => serviceLocator<AuthBloc>()),

        // User Bloc
        BlocProvider<FetchUserBloc>(
            create: (context) => serviceLocator<FetchUserBloc>()),

        BlocProvider<InterestBloc>(
            create: (context) => serviceLocator<InterestBloc>()),

        BlocProvider<GpsBloc>(create: (context) => serviceLocator<GpsBloc>()),
        
        BlocProvider<LocationBloc>(
            create: (context) => serviceLocator<LocationBloc>()),
        // BottomNavBar Cubit
        BlocProvider<BottomNavigationCubit>(
            create: (context) => serviceLocator<BottomNavigationCubit>()),

        // Internet Connection Cubit
        BlocProvider<InternetConnectionCubit>(
            create: (context) => serviceLocator<InternetConnectionCubit>())
      ];
}
