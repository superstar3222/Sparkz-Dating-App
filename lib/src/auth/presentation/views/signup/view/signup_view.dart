part of '../barrels.dart';

class _SignUpView extends StatelessView<SignUpScreen, SignupController> {
  const _SignUpView(SignupController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthBloc, AuthenticationState>(
        listener: (context, state) {
          if (state is SignupError) {
            controller.signupError(state.error);
          }
          if (state is SignupSuccess) {
            controller.signupSuccess(state.data);
          }
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: controller.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomAppB(),
                  30.sbh,
                  ReusableText(
                    text: signupText,
                    // style: appMStyle(23, Color(kDark.value), FontWeight.w700),
                    style: context.textTheme.titleLarge!,
                  ),
                  30.sbh,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: CustomTxtField(
                          labelText: 'First Name',
                          hintText: 'Enter first name',
                          keyboardType: TextInputType.name,
                          textEditingController: controller.firstNameController,
                          validator: (val) =>
                              Validators.firstNameValidator(value: val),
                        ),
                      ),
                      10.sbw,
                      Expanded(
                        child: CustomTxtField(
                            labelText: 'Last name',
                            hintText: 'Enter last name',
                            keyboardType: TextInputType.text,
                            textEditingController:
                                controller.lastNameController,
                            validator: (val) =>
                                Validators.lastNameValidator(value: val)),
                      ),
                    ],
                  ),
                  CustomTxtField(
                    labelText: LocaleKeys.email.tr(),
                    hintText: LocaleKeys.emailtext.tr(),
                    keyboardType: TextInputType.emailAddress,
                    textEditingController: controller.emailController,
                    validator: (val) => Validators.emailValidator(value: val),
                  ),
                  10.sbw,
                  CustomTxtField(
                    labelText: LocaleKeys.password.tr(),
                    hintText: LocaleKeys.enterPassword.tr(),
                    keyboardType: TextInputType.text,
                    suffix: true,
                    textEditingController: controller.passwordController,
                    validator: (val) =>
                        Validators.passwordValidator(value: val),
                  ),
                  30.sbh,
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: LocaleKeys.terms.tr(),
                          // style: appMStyle(
                          //     15, Color(kDark.value), FontWeight.w400),
                          style: context.textTheme.bodySmall!.copyWith(
                              fontSize: 15.sp, fontWeight: FontWeight.w400),
                        ),
                        TextSpan(
                            text: LocaleKeys.condition.tr(),
                            // style: appMStyle(
                            //     15, Color(AppColors.darkRed.value), FontWeight.w400),
                            style: context.textTheme.bodySmall!.copyWith(
                                color: AppColors.darkRed,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400),
                            recognizer: TapGestureRecognizer()..onTap = () {}),
                        TextSpan(
                          text: 'and ',
                          // style: appMStyle(
                          //     15, Color(kDark.value), FontWeight.w400),
                          style: context.textTheme.bodySmall!.copyWith(
                              fontSize: 15.sp, fontWeight: FontWeight.w400),
                        ),
                        TextSpan(
                            text: LocaleKeys.privacy.tr(),
                            // style: appMStyle(
                            //     15, Color(AppColors.darkRed.value), FontWeight.w400),
                            style: context.textTheme.bodySmall!.copyWith(
                                fontSize: 15.sp, fontWeight: FontWeight.w400),
                            recognizer: TapGestureRecognizer()..onTap = () {}),
                      ],
                    ),
                  ),
                  50.sbh,
                  BlocBuilder<AuthBloc, AuthenticationState>(
                    builder: (context, state) {
                      return CustomButton(
                        width: width,
                        height: height / 15,
                        color: Color(AppColors.darkRed.value),
                        textColor: AppColors.whiteColor,
                        isLoading: state is SignupLoading,
                        loadingColor: AppColors.redWithLowOpacity,
                        text: state is SignupLoading
                            ? LocaleKeys.register.tr()
                            : LocaleKeys.submit.tr(),
                        onTap: () => controller.register(),
                      );
                    },
                  ),
                  50.sbh,
                  Center(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: LocaleKeys.account.tr(),
                            style: context.textTheme.bodySmall!.copyWith(
                                color: AppColors.darkGreyColor,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          TextSpan(
                            text: LocaleKeys.login.tr(),
                            style: context.textTheme.bodySmall!.copyWith(
                                color: AppColors.darkRed,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => controller.loginPage(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ).padding(
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 20)),
            ),
          ),
        ),
      ),
    );
  }
}
