import 'package:dating_app/app/core/config/asset_manager.dart';
import 'package:dating_app/src/auth/data/models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../src/auth/data/models/login_response.dart';
import 'app_tokens.dart';

class LocalDataStorage {
  static final LocalDataStorage instance = LocalDataStorage._init();
  static SharedPreferences? _prefs;
  LocalDataStorage._init();

  Future<SharedPreferences> get prefs async {
    if (_prefs != null) return _prefs!;
    _prefs = await SharedPreferences.getInstance();
    return _prefs!;
  }

  final String _id = 'userId';
  final String _firstName = AppTokens.firstName;
  final String _lastName = AppTokens.lastName;
  final String _email = AppTokens.email;
  final String _loggedIn = AppTokens.loggedIn;
  final String _firstTime = AppTokens.firstTime;
  final _userDetails = AppTokens.userDetails;
  final String _gender = AppTokens.gender;
  final String _interest = AppTokens.gender;
  final String _profilePicture = AppTokens.profilePicture;
  final String _finishedOtp = '';
  final String _token = AppTokens.token;
  final String _pushNotificationToken = AppTokens.pushNotificationToken;

  Future<bool> setFirstTime() async {
    final pref = await instance.prefs;
    return await pref.setBool(_firstTime, false);
  }

  Future<void> setuserInfo(User data) async {
    final pref = await instance.prefs;
    await pref.setString(_id, data.id);
    await pref.setString(_firstName, data.firstName);
    await pref.setString(_lastName, data.lastName);
    await pref.setString(_email, data.email);
    await pref.setString(_token, data.token);
    await pref.setString(_profilePicture, Assets.noAccountImage);
    await pref.setBool(_loggedIn, true);
  }

  Future<void> setLoginResponse(LoginResponse data) async {
    final pref = await instance.prefs;
    await pref.setString(_id, data.user.id);
    await pref.setString(_firstName, data.user.firstName);
    await pref.setString(_lastName, data.user.lastName);
    await pref.setString(_email, data.user.email);
    await pref.setString(_token, data.token);
    await pref.setString(_profilePicture, Assets.noAccountImage);
    await pref.setBool(_loggedIn, true);
  }

  Future<void> setToken(String token) async {
    final pref = await instance.prefs;
    await pref.setString(_token, token);
  }

  Future<void> setGender(String gender) async {
    final pref = await instance.prefs;
    await pref.setString(_gender, gender);
  }

  Future<void> setInterest(String interests) async {
    final pref = await instance.prefs;
    await pref.setString(_gender, interests);
  }

  Future<void> setListInterest(List<String> interests) async {
    final pref = await instance.prefs;
    await pref.setStringList(_gender, interests);
  }

  Future<void> isVerified(User data) async {
    final pref = await instance.prefs;
    await pref.setBool(_finishedOtp, data.verified) == true ? true : false;
  }

  Future<void> saveNotificationMessage(String message) async {
    final pref = await instance.prefs;
    await pref.setString(_pushNotificationToken, message);
  }

  Future<bool> getLoggedIn() async {
    final pref = await instance.prefs;
    return pref.getBool(_loggedIn) ?? false;
  }

  Future<bool> getUserDetails() async {
    final pref = await instance.prefs;
    return pref.getBool(_userDetails) ?? false;
  }

  Future<bool> getOtpVerify() async {
    final pref = await instance.prefs;
    return pref.getBool(_finishedOtp) ?? false;
  }

  Future<String> getFirstName() async {
    final pref = await instance.prefs;
    return pref.getString(_firstName)!;
  }

  Future<String> getLastName() async {
    final pref = await instance.prefs;
    return pref.getString(_lastName)!;
  }

  Future<String> getEmail() async {
    final pref = await instance.prefs;
    return pref.getString(_email)!;
  }

  Future<String> getToken() async {
    final pref = await instance.prefs;
    return pref.getString(_token)!;
  }

  Future<bool> getFirstTime() async {
    final pref = await instance.prefs;
    return pref.getBool(_firstTime) ?? true;
  }

  Future<String> getGender() async {
    final pref = await instance.prefs;
    return pref.getString(_gender)!;
  }

  Future<String> getInterest() async {
    final pref = await instance.prefs;
    return pref.getString(_interest)!;
  }

  Future<void> saveUserProfilePic(String value) async {
    final pref = await instance.prefs;
    await pref.setString(_profilePicture, value);
  }

  Future<bool> clearStorage() async {
    bool loggedIn = await getLoggedIn();
    final pref = await instance.prefs;
    await pref.clear();
    await pref.setBool(_loggedIn, loggedIn);
    return true;
  }
}
