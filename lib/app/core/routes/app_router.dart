import 'package:dating_app/app/core/core.dart';

class AppRouter {
  static final RouterConfig<Object> routerConfig = RouterConfig(
    routerDelegate: router.routerDelegate,
    backButtonDispatcher: router.backButtonDispatcher,
    routeInformationParser: router.routeInformationParser,
    routeInformationProvider: router.routeInformationProvider,
  );

  static GoRouter get router => _router;

  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;
}

GlobalKey<NavigatorState> get _navigatorKey => GlobalKey<NavigatorState>();
GlobalKey<NavigatorState> get _shellNavigatorKey => GlobalKey<NavigatorState>();

final GoRouter _router = GoRouter(
    navigatorKey: _navigatorKey,
    initialLocation: StartupScreen.path,
    debugLogDiagnostics: true,
    errorBuilder: (context, state) => const NotFoundScreen(),
    routes: [
      GoRoute(
        path: StartupScreen.path,
        name: StartupScreen.name,
        builder: (context, state) => const StartupScreen(),
      ),
      GoRoute(
        path: OnBoardingScreen.path,
        name: OnBoardingScreen.name,
        builder: (context, state) => const OnBoardingScreen(),
      ),
      GoRoute(
        path: LoginScreen.path,
        name: LoginScreen.name,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: const LoginScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity:
                    CurveTween(curve: Curves.easeInOutCirc).animate(animation),
                child: child,
              );
            },
          );
        },
      ),
      GoRoute(
        path: SignUpScreen.path,
        name: SignUpScreen.name,
        builder: (context, state) => const SignUpScreen(),
      ),
      GoRoute(
        path: OtpScreen.path,
        name: OtpScreen.name,
        builder: (context, state) {
          // final String email = state.extra as String;
          return const OtpScreen();
        },
      ),
      GoRoute(
        path: CompleteVerificationOTPScreen.path,
        name: CompleteVerificationOTPScreen.name,
        builder: (context, state) => const CompleteVerificationOTPScreen(),
      ),
      GoRoute(
        path: ForgotPasswordScreen.path,
        name: ForgotPasswordScreen.name,
        builder: (context, state) => const ForgotPasswordScreen(),
      ),
      GoRoute(
          path: ResetPasswordScreen.path,
          name: ResetPasswordScreen.name,
          builder: (context, state) {
            final String email = state.extra as String;
            return ResetPasswordScreen(email: email);
          }),
      GoRoute(
        path: InfoScreen.path,
        name: InfoScreen.name,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: const InfoScreen(),
            transitionDuration: const Duration(milliseconds: 500),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              var begin = const Offset(1.0, 0.0);
              var end = Offset.zero;
              var tween = Tween(begin: begin, end: end)
                  .chain(CurveTween(curve: Curves.easeInOut));
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          );
        },
      ),
      GoRoute(
        path: InterestScreen.path,
        name: InterestScreen.name,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: const InterestScreen(),
            transitionDuration: const Duration(milliseconds: 500),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              var begin = const Offset(1.0, 0.0);
              var end = Offset.zero;
              var tween = Tween(begin: begin, end: end)
                  .chain(CurveTween(curve: Curves.easeInOut));
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          );
        },
      ),
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        pageBuilder: (context, state, child) =>
            NoTransitionPage(child: SkeletonScreen(child: child)),
        routes: [
          GoRoute(
              path: HomeScreen.path,
              name: HomeScreen.name,
              pageBuilder: (context, state) {
                return const NoTransitionPage(child: HomeScreen());
              }),
          GoRoute(
            path: ChatTabBarSkeleton.path,
            name: ChatTabBarSkeleton.name,
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: ChatTabBarSkeleton()),
          ),
          GoRoute(
            path: NotificationScreen.route,
            name: NotificationScreen.name,
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: NotificationScreen()),
          ),
          GoRoute(
            path: ProfileScreen.route,
            name: ProfileScreen.name,
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: ProfileScreen()),
          ),
        ],
      ),
    ],
    redirect: (BuildContext context, GoRouterState state) async {
      debugPrint(state.matchedLocation);
      debugPrint('${await LocalDataStorage.instance.getFirstTime()}');
      if (state.matchedLocation == LoginScreen.path) {
        if (await LocalDataStorage.instance.getFirstTime()) {
          return OnBoardingScreen.path;
        } else {
          if (await LocalDataStorage.instance.getLoggedIn()) {
            return HomeScreen.path;
          } else {
            return LoginScreen.path;
          }
        }
      }
      return null;
    });
