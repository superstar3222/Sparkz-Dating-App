part of '../notification_barrel.dart';

class _NotificationView
    extends StatelessView<NotificationScreen, NotificationController> {
  const _NotificationView(NotificationController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              10.sbh,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ReusableText(
                    text: 'It\'s a',
                    style: appMStyle(30, AppColors.blackColor, FontWeight.w700),
                  ),
                  ReusableText(
                    text: ' Match!',
                    style: appMStyle(30, AppColors.darkRed, FontWeight.w700),
                  ),
                ],
              ),
              30.sbh,
              Align(
                  alignment: Alignment.center, child: buildNotificationCard()),
              10.sbh,
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: AppString.notificationMsg,
                      style: appMStyle(16, AppColors.darkGreyColor, FontWeight.w500),
                    ),
                    TextSpan(
                      text: AppString.matchMsg,
                      style:
                          appMStyle(18, Color(AppColors.darkRed.value), FontWeight.w400),
                    ),
                    TextSpan(
                      text: AppString.lastMsg,
                      style: appMStyle(16, AppColors.darkGreyColor, FontWeight.w500),
                    ),
                  ],
                ),
              ),
              20.sbh,
              CustomButton(
                width: double.maxFinite,
                height: 60.h,
                color: AppColors.darkRed,
                text: 'Start chatting now',
                onTap: () {},
              ),
              10.sbh,
              CustomButton(
                width: double.maxFinite,
                height: 60.h,
                color: AppColors.whiteColor,
                text: 'No, Skip',
                onTap: () {},
              ),
            ],
          ).padding(const EdgeInsets.symmetric(vertical: 30, horizontal: 20)),
        ),
      ),
    );
  }
}

Widget buildNotificationCard() {
  return Container(
    height: double.maxFinite,
    width: double.maxFinite,
    child: Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
          top: 10,
          child: UserDisplayPicture(
            imageUrl: Assets.noAccountImage,
            isLargeDp: true,
            // largeDP: 120.r,
          ),
        ),
        Positioned(
          left: 120,
          top: 100,
          child: SvgPicture.asset(Assets.heartMached),
        ),
        Positioned(
          left: 100,
          top: 100 - 10,
          child: UserDisplayPicture(
            imageUrl: Assets.noAccountImage,
            isLargeDp: true,
          ),
        )
      ],
    ),
  );
}
