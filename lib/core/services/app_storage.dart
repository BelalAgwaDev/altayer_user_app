import 'package:altayer/core/services/app_storage_key.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppPreferences {
  final SharedPreferences _sharedPreferences;
  AppPreferences(this._sharedPreferences);

  //on Boarding screen
  Future<void> setOnBoardingScreenView() async {
    await _sharedPreferences.setBool(
        PrefKeys.prefsKeyOnBoardingScreenView, true);
  }

  Future<bool> isOnBoardingScreenView() async {
    return _sharedPreferences.getBool(PrefKeys.prefsKeyOnBoardingScreenView) ??
        false;
  }

  //login screen data

  Future<void> setLoginScreenView() async {
    await _sharedPreferences.setBool(PrefKeys.prefsKeyIsUserLoggedIn, true);
  }

  Future<bool> isUserLoggedIn() async {
    return _sharedPreferences.getBool(PrefKeys.prefsKeyIsUserLoggedIn) ?? false;
  }
}
