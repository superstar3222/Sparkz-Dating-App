import 'package:flutter/material.dart';
// import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension OnTextExtension on Widget {
  Widget reusableText(String text, {required TextStyle style}) {
    return Text(text, style: style);
  }
}

extension OnWidthSpacer on num {
  Widget get sbw => SizedBox(width: w);
}

extension OnHeightSpacer on num {
  Widget get sbh => SizedBox(height: h);
}

extension OnCenter on Widget {
  Widget get center => const Center();
}

// ? if it is a double

extension WidgetDExtensions on double {
  Widget get sbH => SizedBox(
        height: h,
      );
  Widget get sbW => SizedBox(
        height: w,
      );
  EdgeInsetsGeometry get padA => EdgeInsets.all(this);
  EdgeInsetsGeometry get padV => EdgeInsets.symmetric(vertical: h);
  EdgeInsetsGeometry get padH => EdgeInsets.symmetric(vertical: w);
}

extension FormValidators on String {
  bool get isEmail {
    final RegExp emailRegex = RegExp(r'^[a-zA-z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+');
    return emailRegex.hasMatch(this);
  }

  bool get isPassword {
    final RegExp passwordRegex =
        RegExp(r'^(?=,*[0-9])(?=,*[a-zA-Z])(?=\S+$).{8,}$');
    return passwordRegex.hasMatch(this);
  }

  bool get isName {
    final RegExp name =
        RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$");
    return name.hasMatch(this);
  }
}

extension BuildOnContext on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;

  double get sizeWidth => MediaQuery.of(this).size.width;
  double get sizeHeight => MediaQuery.of(this).size.height;
}

// extension WidgetAnimation on Widget {
//   Animate fadeInFromTop({
//     Duration? delay,
//     Duration? animationDuration,
//     Offset? offset,
//   }) =>
//       animate(delay: delay ?? 500.ms)
//           .move(
//               duration: animationDuration ?? 500.ms,
//               begin: offset ?? const Offset(0, -1))
//           .fade(duration: animationDuration ?? 500.ms);

//   Animate fadeIFromBottom({
//     Duration? delay,
//     Duration? animationDuration,
//     Offset? offset,
//   }) =>
//       animate(delay: delay ?? 500.ms)
//           .move(
//               duration: animationDuration ?? 500.ms,
//               begin: offset ?? const Offset(0, 10))
//           .fade(duration: animationDuration ?? 500.ms);

//   Animate transitionToLeft({
//     Duration? delay,
//     Duration? animationDuration,
//     Offset? offset,
//   }) =>
//       animate(delay: delay ?? 500.ms).moveX();
// }
