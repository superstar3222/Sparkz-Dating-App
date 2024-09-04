part of 'startup_controller.dart';

class _StartupScreen extends StatelessView<StartupScreen, StartupController> {
  const _StartupScreen(StartupController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    late final Animation<double> fadeInAnimation = CurvedAnimation(
        parent: controller._animationController, curve: Curves.easeIn);
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: FadeTransition(
          opacity: fadeInAnimation,
          child: ReusableText(
            text: 'Sparkz..',
            style: appMStyle(
              30,
              AppColors.darkRed,
              FontWeight.bold,
            ),
          ),
        ),
      ).padding(const EdgeInsets.symmetric(horizontal: 10)),
    );
  }
}
