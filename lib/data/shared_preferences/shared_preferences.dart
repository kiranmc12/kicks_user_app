import 'package:kicks_sneakerapp/domain/models/token/token_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static const String token = 'access_key';
  static const String isLoged = 'is_logedIn';
  static const String userId = 'user_id';

  static Future<void> setToken({required TokenModel tokenModel}) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString(token, tokenModel.accessToken);
    preferences.setInt(userId, tokenModel.userId);
  }

  static Future<TokenModel> getToken() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String accessToken = preferences.getString(token) ?? '';
    int userID = preferences.getInt(userId) ?? 0;
    return TokenModel(accessToken: accessToken, userId: userID);
  }

  static Future<void> setLogin() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool(isLoged, true);
  }

  static Future<void> removeLogin() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.clear();
  }

  static Future<bool> getLogin() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getBool(isLoged) ?? false;
  }
}
