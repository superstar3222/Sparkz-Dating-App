import 'package:dating_app/app/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoInternetConnectionWidget extends StatelessWidget {
  final Function() onPressed;
  const NoInternetConnectionWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            Assets.noInternetImage,
            height: 200.h,
          ),
          10.sbh,
          ReusableText(
            text: AppString.connectionMessage,
            style: appMStyle(24, AppColors.blackWithOpacity, FontWeight.bold),
          ),
          15.sbh,
          ReusableText(
            text: AppString.socketException,
            style: appMStyle(16, AppColors.blackWithOpacity, FontWeight.w400),
          ),
          20.sbh,
          CustomElevatedButton(
            onPressed: onPressed,
            text: 'Refresh',
            radius: 18,
            height: 40.h,
            width: 100.w,
          )
        ],
      ),
    );
  }
}
