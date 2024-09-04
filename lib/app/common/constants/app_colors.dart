import 'package:flutter/material.dart';

class AppColors {
  static final AppColors _instance = AppColors._internal();

  factory AppColors() => _instance;

  AppColors._internal();

  static const darkRed = Color(0xFFA42823);
  static const blackColor = Color(0xFF000000);
  static const whiteColor = Color(0xFFFFFFFF);
  static final blackWithOpacity = const Color(0xFF000000).withOpacity(0.9);
  static const darkGreyColor = Color(0xFF7F7777);
  static const brightRedColor = Color(0XFFEF0606);
  static const colorGrey = Color(0XFF6A6464);
  static final redWithLowOpacity = const Color(0XFFffb6b6).withOpacity(0.4);
  static const keyboardColor = Color(0xFF898A8D);
}
