part of 'barrels.dart';

class OnBoardingScreen extends StatefulWidget {
  static const String path = '/onboarding';
  static const String name = 'onboarding_screen';
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => OnBoardingController();
}

class OnBoardingController extends State<OnBoardingScreen> {
  late PageController pageController;

  @override
  void initState() {
    super.initState();

    pageController = PageController();
    LocalDataStorage.instance.setFirstTime();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  loginPage() {
    debugPrint('clicked');
    context.goNamed(LoginScreen.name);

    debugPrint('clicked2');
  }

  @override
  Widget build(BuildContext context) {
    return OnBoarding(this);
  }
}
