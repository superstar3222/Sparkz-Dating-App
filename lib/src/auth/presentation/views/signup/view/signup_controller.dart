part of '../barrels.dart';

class SignUpScreen extends StatefulWidget {
  static const String path = '/auth/register';
  static const String name = 'signup';
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => SignupController();
}

class SignupController extends State<SignUpScreen> {
  late TextEditingController emailController,
      passwordController,
      firstNameController,
      lastNameController;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late LocationBloc locationBloc = serviceLocator<LocationBloc>();
  final GpsBloc gpsBloc = serviceLocator<GpsBloc>();

  @override
  void initState() {
    super.initState();
    locationBloc.getCurrentPosition();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    super.dispose();
  }

  register() async {
    if (locationBloc.state.lastKnownLocation == null) {
      gpsBloc.askLocationPermission();
    }
    if (formKey.currentState!.validate()) {
      FocusScope.of(context).unfocus();
      context.read<AuthBloc>().add(
            SignupEvent(
              firstName: firstNameController.text.trim(),
              lastName: lastNameController.text.trim(),
              email: emailController.text.trim(),
              password: passwordController.text.trim(),
              location: locationBloc.state.lastKnownLocation.toString(),
            ),
          );
    }
  }

  loginPage() {
    context.goNamed(LoginScreen.name);
  }

  signupSuccess(User data) async {
    await LocalDataStorage.instance.setuserInfo(data);
    Future.delayed(const Duration(milliseconds: 1500),
            () => ToastMessages.showToastSuccessMessage(AppString.signupSucess))
        .whenComplete(
      () => context.goNamed(OtpScreen.name),
    );
  }

  signupError(NetworkExceptions error) {
    Future.delayed(const Duration(milliseconds: 2000),
        () => ToastMessages.showToastServerError(error));
  }

  backPage() {}

  @override
  Widget build(BuildContext context) {
    return _SignUpView(this);
  }
}
