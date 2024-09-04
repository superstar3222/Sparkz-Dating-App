import 'package:dating_app/app/common/constants/app_colors.dart';
import 'package:flutter/material.dart';

abstract class ShowDialog {
  ShowDialog._();

  Future<T?> showDialog<T>({
    required BuildContext context,
    required Widget Function(BuildContext) builder,
    bool barrierDismmissible = true,
    Color? barrierColor = AppColors.darkRed,
    String? barrierLabel,
    TraversalEdgeBehavior? traversalEdgeBehavior,
  });
}
