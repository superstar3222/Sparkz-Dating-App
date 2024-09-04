import 'package:dating_app/app/common/common.dart';
import 'package:dating_app/app/core/core.dart';

import '../../core/network/dio_exception.dart';

class ToastMessages {
  static final ToastMessages _instance = ToastMessages._internal();

  factory ToastMessages() => _instance;

  ToastMessages._internal();

  static showToastServerError(NetworkExceptions error) {
    Fluttertoast.showToast(
        msg: NetworkExceptions.getErrorMessage(error),
        fontSize: 16,
        backgroundColor: Color(AppColors.darkRed.value),
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM);
  }

  static showToastSuccessMessage(String message) {
    return Fluttertoast.showToast(
      msg: message,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Color(AppColors.darkRed.value),
    );
  }

  static showToastErrorMessage(String message) {
    return Fluttertoast.showToast(
      msg: message,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Color(AppColors.darkRed.value),
    );
  }
}
