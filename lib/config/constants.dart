//Application-wide constants.it is a constants file... Centralizes magic numbers and strings.
//When the API URL changes, you change it in one place.
///When the GPS timeout changes, you change it in one place.
class AppConstants {
  AppConstants._();

  //API
  static const String apiBaseUrl = 'https://api.bsmart.com';
  static const String apiVersion = 'v1';

  //TIMEOUTS
  static const Duration gpsTimeout = Duration(seconds: 60);
  static const Duration apiTimeout = Duration(seconds: 30); // General API
  static const Duration switchTimeout = Duration(minutes: 2); // Page 18

  //STORAGE KEYS
  static const String authTokenKey = 'bsmart_auth_token';
  static const String userIdKey = 'bsmart_user_id';
  static const String currentWorkCodeKey = 'bsmart_current_wc';

  //UI
  static const double defaultPadding = 16.0;
  static const double cardElevation = 2.0;
  static const double buttonHeight = 48.0;
}
