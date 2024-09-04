// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "firstPage": "Find your",
  "pageOne": "Application aimed at singles looking for serious relationship",
  "pageTwo": "Our algorithm helps you find people with music, anime and book interest  as you",
  "pageThree": "Meet and chat with people in your city that are open for friendship and relationship",
  "pageTwoText": "Make new friends, Find Love.",
  "pageThreeSubText": "Connect with people in your city",
  "login": "Log in",
  "signup": "Sign Up",
  "loginText": "Login into your account",
  "signupText": "Create an account",
  "interestText": "Select 3 niches to help personalize your friends suggestion",
  "forgotPasswordText": "Enter your email and we will send a otp code to you",
  "enterPassword": "Enter pasword",
  "emailtext": "Enter Email",
  "terms": "By signing up you agreed to our",
  "condition": "Terms & condition",
  "privacy": "privacy policy",
  "register": "Registering please wait...",
  "submit": "Continue",
  "account": "Already have an account?",
  "email": "Email",
  "password": "Password",
  "forgotPassword": "Forgot Password",
  "logging": "Logging in please wait...",
  "passwordvalidator": "Password must be 6 digits and must contain an uppercase letter \n and at least a number and a special character.",
  "emailvalidator": "Enter a valid email address",
  "firstnamevalidator": "First name should be at least 3 characters long",
  "lastnamevalidator": "Last name should be at least 3 characters long",
  "firstName": "first name must be at least 5 characters",
  "lastName": "last name must be at least 5 characters",
  "required": "This field is required"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en};
}
