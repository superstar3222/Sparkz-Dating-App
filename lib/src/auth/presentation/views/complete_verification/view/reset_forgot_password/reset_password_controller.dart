part of '../../verification_barrels.dart';

class ResetPasswordScreen extends StatefulWidget {
  static const String path = '/resetPassword';
  static const String name = 'resetPassword';
  const ResetPasswordScreen({super.key, required this.email});
  final String email;

  @override
  State<ResetPasswordScreen> createState() => ResetPasswordController();
}

class ResetPasswordController extends State<ResetPasswordScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late TextEditingController newPasswordController, otpController;

  @override
  void initState() {
    super.initState();
    newPasswordController = TextEditingController();
    otpController = TextEditingController();
  }

  backPage() {
    context.pop();
  }

  resetPassword() {
    if (formKey.currentState!.validate()) {
      context.read<AuthBloc>().add(ResetPasswordEvent(
          otp: otpController.text,
          password: newPasswordController.text,
          email: widget.email));
    }
  }

  resetPasswordSucess() {
    context.goNamed(LoginScreen.name);
  }

  resetError(NetworkExceptions error) {
    ToastMessages.showToastServerError(error);
  }

  @override
  void dispose() {
    newPasswordController.dispose();
    otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _ResetPasswordView(this);
  }
}
