import 'package:flutter_svg/flutter_svg.dart';

import '../../core/core.dart';
import '../../core/config/asset_manager.dart';

class CustomAppB extends StatelessWidget {
  const CustomAppB({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          context.pop();
        },
        child: SvgPicture.asset(Assets.svgHelper('Arrow 2')));
  }
}
