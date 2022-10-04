import 'package:fpbm/models/login_response.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/status/http_status.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/login_request.dart';

/// LoginService responsible to communicate with web-server
/// via authenticaton related APIs
class LoginService extends GetConnect {
  final String loginUrl = 'http://localhost:8080/login';

  Future<LoginResponseModel?> fetchLogin(LoginRequestModel model) async {
    final response = await post(loginUrl, model.toJson());

    if (response.statusCode == HttpStatus.ok) {
      // Obtain shared preferences.
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(
          'token', LoginResponseModel.fromJson(response.body).token.toString());
      await prefs.setString('username',
          LoginResponseModel.fromJson(response.body).username.toString());
      print(prefs.getString('token'));
      return LoginResponseModel.fromJson(response.body);
    } else {
      return null;
    }
  }
}
