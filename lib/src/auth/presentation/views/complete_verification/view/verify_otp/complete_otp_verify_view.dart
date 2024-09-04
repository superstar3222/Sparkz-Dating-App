part of '../../verification_barrels.dart';

class _CompleteOTPVerificationView extends StatelessView<
    CompleteVerificationOTPScreen, CompleteVerificationOTPController> {
  const _CompleteOTPVerificationView(CompleteVerificationOTPController state,
      {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ReusableText(
            text: 'Verifcation successful',
            style: appMStyle(26, AppColors.blackColor, FontWeight.w600),
          ),
          20.sbh,
          Container(
            alignment: Alignment.center,
            width: width * 0.2,
            height: height * 0.2,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.darkRed,
            ),
            child: Icon(Icons.done, color: AppColors.whiteColor, size: 50.w),
          ),
          20.sbh,
          CustomButton(
            width: width,
            height: height / 15,
            color: AppColors.darkRed,
            textColor: AppColors.whiteColor,
            text: 'Continue',
            onTap: () => controller.infoView(),
          )
        ],
      ).padding(const EdgeInsets.symmetric(horizontal: 10, vertical: 24))),
    );
  }
}
