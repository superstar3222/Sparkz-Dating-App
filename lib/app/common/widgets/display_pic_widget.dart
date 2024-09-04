import 'package:dating_app/app/common/constants/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/core.dart';

class UserDisplayPicture extends StatelessWidget {
  final Function()? onTap;
  final String imageUrl;
  final double? largeDP;
  final bool isLargeDp;
  const UserDisplayPicture({
    super.key,
    this.onTap,
    required this.imageUrl,
    this.largeDP,
    this.isLargeDp = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: isLargeDp ? 80.r : 20.r,
        backgroundColor: AppColors.darkRed,
        child: CircleAvatar(
          radius: isLargeDp ? 76.r : 18.r,
          backgroundImage: AssetImage(imageUrl),
        ),
      ),
    );
  }
}
