import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fpbm/models/cache_manager.dart';
import 'package:fpbm/models/login_response.dart';
import 'package:fpbm/models/user_model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserService extends GetxController with CacheManager {
  // UserService service = Get.find<UserService>();
  UserModel? userModel;
  final String ApiUrl = 'http://localhost:8080/';
  var isDataLoading = false.obs;

  @override
  Future<void> onInit() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    super.onInit();
    print("object");
    print(prefs.getString('token'));
    getUserInfoFromApi(prefs.getString('token'), prefs.getString('username'));
  }

  getUserInfoFromApi(String? accessToken, String? username) async {
    final token = accessToken;

    print("start get user info");
    print("token : $token");
    print("username : $username");
    try {
      isDataLoading(true);
      final userUri = ApiUrl + 'user/$username';
      final response = await get(Uri.parse(userUri),
          headers: {"Authorization": 'Bearer $accessToken'});
      print(response.statusCode);
      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);
        userModel = UserModel.fromJson(result);
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      debugPrint("Error while getting Data $e");
    } finally {
      isDataLoading(false);
    }
    print("end get user info");
  }
}
