part of '../otp_barrels.dart';

class _OtpView extends StatelessView<OtpScreen, OtpController> {
  const _OtpView(OtpController state, {Key? key}) : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthBloc, AuthenticationState>(
        listener: (context, state) {
          if (state is VerifyOtpError) {
            controller.verifyOtpError(state.error);
          }
          if (state is VerifyOtpSuccess) {
            controller.verifySuccess();
          }
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomAppB(),
                    20.sbh,
                    Center(
                      child: Column(
                        children: [
                          ReusableText(
                              text: 'Email Verification',
                              style: appMStyle(
                                  23, AppColors.blackColor, FontWeight.w700)),
                          20.sbh,
                          SvgPicture.asset(Assets.svgHelper('lock_color')),
                          ReusableText(
                              text: 'Enter OTP',
                              style: appMStyle(
                                  23, AppColors.blackColor, FontWeight.w600)),
                          20.sbh,
                          ReusableText(
                              text: otpText(controller.email),
                              style: appMStyle(
                                  20, AppColors.colorGrey, FontWeight.w600)),
                          15.sbh,
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Wrong email? ',
                                  style: appMStyle(
                                      13, AppColors.colorGrey, FontWeight.w400),
                                ),
                                TextSpan(
                                    text: 'Change',
                                    style: appMStyle(
                                        13, AppColors.darkRed, FontWeight.w400),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {}),
                              ],
                            ),
                          ),
                          buildPinPut(
                            pinController: controller.otpController,
                            pinputFocusNode: controller.pinputFocusNode,
                          ).padding(const EdgeInsets.all(20))
                        ],
                      ),
                    ),
                    10.sbh,
                    BlocBuilder<AuthBloc, AuthenticationState>(
                        builder: (context, state) {
                      return buildTimer(onTap: () => controller.resendOtp());
                    }),
                    40.sbh,
                    BlocBuilder<AuthBloc, AuthenticationState>(
                      builder: (context, state) {
                        return Center(
                          child: CustomButton(
                            width: width * 0.4,
                            height: height / 15,
                            color: AppColors.darkRed,
                            textColor: AppColors.whiteColor,
                            isLoading: state is VerifyOtpLoading,
                            loadingColor: AppColors.redWithLowOpacity,
                            text: 'Submit OTP',
                            onTap: () => controller.verify(),
                          ),
                        );
                      },
                    ),
                  ],
                ).padding(
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 20)),
                AppKeyBoard(controller: controller.otpController)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildPinPut(
      {required TextEditingController pinController,
      required FocusNode pinputFocusNode,
      void Function(String)? onCompleted}) {
    final defaultPinTheme = PinTheme(
      width: 50,
      height: 50,
      textStyle: const TextStyle(
          fontSize: 16,
          color: AppColors.blackColor,
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.redWithLowOpacity),
        color: AppColors.redWithLowOpacity,
        borderRadius: BorderRadius.circular(10),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: AppColors.darkRed),
      borderRadius: BorderRadius.circular(10),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: AppColors.whiteColor,
        border: Border.all(color: AppColors.darkRed),
      ),
    );

    return Center(
      child: Pinput(
        androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsRetrieverApi,
        defaultPinTheme: defaultPinTheme,
        focusedPinTheme: focusedPinTheme,
        submittedPinTheme: submittedPinTheme,
        keyboardType: TextInputType.none,
        controller: pinController,
        focusNode: pinputFocusNode,
        validator: (s) {
          return null;
        },
        pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
        showCursor: true,
        onCompleted: onCompleted,
      ),
    );
  }

  Widget buildTimer({required VoidCallback onTap}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(onTap: onTap, child: const Text('Resend Code in')),
        5.sbw,
        TweenAnimationBuilder(
          tween: Tween(begin: 60.0, end: 0.0),
          duration: const Duration(seconds: 60),
          builder: (_, dynamic value, child) {
            return Text(
              "${value.toInt()}s",
              style: TextStyle(
                color: AppColors.blackColor,
              ),
            );
          },
        ),
      ],
    ).padding(const EdgeInsets.symmetric(horizontal: 20));
  }
}
