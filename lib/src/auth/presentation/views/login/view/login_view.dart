part of '../barrels.dart';

class _LoginView extends StatelessView<LoginScreen, LoginController> {
  const _LoginView(LoginController state, {Key? key}) : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthBloc, AuthenticationState>(
        listener: (context, state) {
          if (state is LoginError) {
            controller.loginError(state.error);
          }
          if (state is LoginSuccess) {
            controller.loginSuccess(state.response);
          }
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: controller.formKey,
              child: AutofillGroup(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    20.sbh,
                    ReusableText(
                      text: loginText,
                      // style: appMStyle(23, Color(kDark.value), FontWeight.w700),
                      style: context.textTheme.titleLarge!,
                    ),
                    20.sbh,
                    CustomTxtField(
                      labelText: LocaleKeys.email.tr(),
                      hintText: LocaleKeys.emailtext.tr(),
                      autofillHints: const [AutofillHints.email],
                      keyboardType: TextInputType.emailAddress,
                      textEditingController: controller.emailController,
                      isValidationMessage: true,
                      validator: (val) => Validators.emailValidator(value: val),
                    ),
                    CustomTxtField(
                      labelText: LocaleKeys.password.tr(),
                      hintText: LocaleKeys.enterPassword.tr(),
                      autofillHints: const [AutofillHints.password],
                      keyboardType: TextInputType.text,
                      suffix: true,
                      textEditingController: controller.passwordController,
                      isValidationMessage: true,
                      validator: (val) =>
                          Validators.passwordValidator(value: val),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              fillColor: const MaterialStatePropertyAll(
                                  AppColors.colorGrey),
                              value: controller.isCheck,
                              onChanged: (value) => controller.toggleCheck(),
                            ),
                            ReusableText(
                              text: 'Remember me',
                              style: context.textTheme.bodySmall!.copyWith(
                                  fontSize: 15.sp, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        // 30.sbH,
                        RichText(
                          textAlign: TextAlign.right,
                          text: TextSpan(
                              text: LocaleKeys.forgotPassword.tr(),
                              style: context.textTheme.bodySmall!.copyWith(
                                  fontSize: 13.sp, fontWeight: FontWeight.w500),
                              // style: appMStyle(
                              //     13, Color(kDark.value), FontWeight.w500),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => controller.forgotPassword()),
                        ),
                      ],
                    ),
                    30.sbh,
                    BlocBuilder<AuthBloc, AuthenticationState>(
                      builder: (context, state) {
                        return CustomButton(
                          width: width,
                          height: height / 15,
                          color: AppColors.darkRed,
                          textColor: AppColors.whiteColor,
                          isLoading: state is LoginLoading,
                          text: state is LoginLoading
                              ? LocaleKeys.logging.tr()
                              : LocaleKeys.login.tr(),
                          onTap: () => controller.login(),
                        );
                      },
                    ),
                    30.sbh,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          color: Color(AppColors.colorGrey.value),
                          width: width * 0.28,
                          height: 2.h,
                        ),
                        ReusableText(
                            text: ' or continue with ',
                            style: context.textTheme.bodySmall!.copyWith(
                              color: AppColors.colorGrey,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                            )
                            // style: appMStyle(
                            //     13, Color(AppColors.colorGrey.value), FontWeight.w400),
                            ),
                        Container(
                          color: Color(AppColors.colorGrey.value),
                          width: width * 0.28,
                          height: 2.h,
                        ),
                      ],
                    ),
                    30.sbh,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildLoginOptions(
                            onTap: () {}, imagePath: Assets.helper('fb')),
                        20.sbw,
                        buildLoginOptions(
                            onTap: () {}, imagePath: Assets.helper('gb')),
                        20.sbw,
                        buildLoginOptions(
                            onTap: () {}, imagePath: Assets.helper('in')),
                      ],
                    ),
                    50.sbh,
                    Center(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: LocaleKeys.account.tr(),
                                style: context.textTheme.bodySmall!.copyWith(
                                    color: AppColors.colorGrey,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w400)
                                // style: appMStyle(
                                //     15, Color(AppColors.colorGrey.value), FontWeight.w400),
                                ),
                            TextSpan(
                                text: LocaleKeys.signup.tr(),
                                // style: appMStyle(
                                //     15, Color(AppColors.darkRed.value), FontWeight.w400),
                                style: context.textTheme.bodySmall!.copyWith(
                                    color: AppColors.darkRed,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w400),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => controller.register()),
                          ],
                        ),
                      ),
                    ),
                  ],
                ).padding(
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 10)),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildLoginOptions(
      {required VoidCallback onTap,
      required String imagePath,
      double? height}) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset(imagePath),
    );
  }
}
