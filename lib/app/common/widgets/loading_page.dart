import 'package:dating_app/app/common/constants/app_colors.dart';

import '../../core/core.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) => Container(
        color: AppColors.darkGreyColor.withOpacity(0.15),
      );
}
