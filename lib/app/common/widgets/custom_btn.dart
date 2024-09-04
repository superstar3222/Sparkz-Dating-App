import 'package:dating_app/app/common/common.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/core.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.width,
    this.height,
    this.text,
    this.onTap,
    required this.color,
    this.textColor,
    this.resize = false,
    this.icon,
    this.isLoading = false,
    this.prefix,
    this.loadingColor,
  });
  final double? width;
  final double? height;
  final String? text;
  final void Function()? onTap;
  final Color color;
  final Color? textColor;
  final bool resize;
  final IconData? icon;
  final bool isLoading;
  final Widget? prefix;
  final Color? loadingColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isLoading ? loadingColor ?? AppColors.colorGrey : color,
          borderRadius: resize ? klargeBorderRadius : kmediumBorderRadius,
        ),
        child: resize
            ? Icon(icon, size: 23.sp, color: AppColors.whiteColor)
            : const Center().reusableText(
                text ?? '',
                style: appMStyle(
                  20,
                  textColor ?? Colors.white,
                  FontWeight.w700,
                ),
              ),
      ),
    );
  }
}

// ** Custom Elevated Button

class CustomElevatedButton extends StatelessWidget {
  final Function() onPressed;
  final double? height;
  final double? width;
  final double? radius;
  final String text;
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    this.height,
    this.width,
    this.radius,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 50.h,
      width: width ?? double.maxFinite,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1.5, color: AppColors.colorGrey),
            borderRadius: BorderRadius.all(Radius.circular(radius ?? 10.r)),
          ),
          padding: EdgeInsets.zero,
          backgroundColor: AppColors.darkRed,
        ),
        child: Center(
          child: ReusableText(
            text: text,
            // style: appMStyle(16, AppColors.whiteColor, FontWeight.w500),
            style: context.textTheme.bodyMedium!
                .copyWith(fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
