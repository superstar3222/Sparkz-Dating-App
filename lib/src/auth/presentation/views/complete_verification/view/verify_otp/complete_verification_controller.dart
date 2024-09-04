part of '../../verification_barrels.dart';

class CompleteVerificationOTPScreen extends StatefulWidget {
  static const String path = '/verify_otp';
  static const String name = 'verify_otp';
  const CompleteVerificationOTPScreen({super.key});

  @override
  State<CompleteVerificationOTPScreen> createState() =>
      CompleteVerificationOTPController();
}

class CompleteVerificationOTPController
    extends State<CompleteVerificationOTPScreen> {
  infoView() {
    context.goNamed(InfoScreen.name);
  }

  @override
  Widget build(BuildContext context) {
    return _CompleteOTPVerificationView(this);
  }
}
