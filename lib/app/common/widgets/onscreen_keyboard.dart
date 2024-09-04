import 'package:dating_app/app/common/common.dart';

import '../../core/core.dart';

class AppKeyBoard extends StatefulWidget {
  final TextEditingController controller;
  const AppKeyBoard({super.key, required this.controller});

  @override
  State<AppKeyBoard> createState() => _AppKeyBoardState();
}

class _AppKeyBoardState extends State<AppKeyBoard> {
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = widget.controller;
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.keyboardColor.withOpacity(0.4),
      child: Column(
        children: [
          Row(
            children: [
              _buildKeypadButton('1', child: 15.sbh),
              _buildKeypadButton('2', alphabets: 'ABC'),
              _buildKeypadButton('3', alphabets: 'DEF'),
            ],
          ),
          Row(
            children: [
              _buildKeypadButton('4', alphabets: 'GHI'),
              _buildKeypadButton('5', alphabets: 'JKL'),
              _buildKeypadButton('6', alphabets: 'MNO'),
            ],
          ),
          Row(
            children: [
              _buildKeypadButton('7', alphabets: 'PQRS'),
              _buildKeypadButton('8', alphabets: 'TUV'),
              _buildKeypadButton('9', alphabets: 'WXYZ'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(child: Container()),
              _buildKeypadButton('0', child: 15.sbh),
              _buildKeypadButton('⌫',
                  child: 15.sbh,
                  color: AppColors.darkGreyColor.withOpacity(0.1),
                  onPressed: _backspace),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildKeypadButton(String text,
      {VoidCallback? onPressed,
      Color? color,
      String? alphabets,
      Widget? child}) {
    return Expanded(
      child: GestureDetector(
        onTap: onPressed ?? () => _inputText(text),
        child: Container(
          // padding: const EdgeInsets.all(4),
          margin: const EdgeInsets.all(4),
          decoration: BoxDecoration(
              color: color ?? AppColors.whiteColor,
              borderRadius: BorderRadius.circular(6)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ReusableText(
                  text: text,
                  style: appMStyle(22, AppColors.blackColor, FontWeight.w400)),
              child ??
                  ReusableText(
                      text: alphabets ?? '',
                      style:
                          appMStyle(12, AppColors.blackColor, FontWeight.w500)),
            ],
          ),
        ),
      ),
    );
  }

  void _inputText(String text) {
    final value = controller.text + text;
    controller.text = value;
  }

  void _backspace() {
    final value = controller.text;
    if (value.isNotEmpty) {
      controller.text = value.substring(0, value.length - 1);
    }
  }
}
