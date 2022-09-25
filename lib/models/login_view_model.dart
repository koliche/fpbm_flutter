import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../services/auth_manager.dart';
import '../services/login_service.dart';
import 'login_request.dart';

class LoginViewModel extends GetxController {
  AuthenticationManager authManager = Get.find();
  LoginService loginService = Get.find();

  @override
  void onInit() {
    super.onInit();
    loginService = Get.find();
    authManager = Get.find();
  }

  Future<void> loginUser(String username, String password) async {
    final response = await loginService
        .fetchLogin(LoginRequestModel(username: username, password: password));

    if (response != null && response.role[0]['authority'] == 'student') {
      /// Set isLogin to true
      print(response.role[0]['authority']);
      authManager.login(response.token);
    } else {
      /// Show user a dialog about the error response
      Get.defaultDialog(
          middleText: 'User not found!',
          textConfirm: 'OK',
          confirmTextColor: Colors.white,
          onConfirm: () {
            Get.back<LoginService>();
          });
    }
  }
}
