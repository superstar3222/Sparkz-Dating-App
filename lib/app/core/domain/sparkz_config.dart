import 'package:dating_app/app/common/common.dart';
import 'package:dating_app/app/core/core.dart';
import 'package:dating_app/app/core/routes/app_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/themes/app_theme.dart';

class SparkzConfig extends StatelessWidget {
  const SparkzConfig({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //remove keyboard on touching anywhere on the screen.
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: kAppName,
            theme: AppThemes().theme,
            routerConfig: AppRouter.routerConfig,
            locale: context.locale,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            // home: const OnboardingScreen(),
          );
        },
      ),
    );
  }
}
