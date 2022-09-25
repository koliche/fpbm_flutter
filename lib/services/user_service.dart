import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fpbm/models/user_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class UserService extends GetxController {
  // UserService service = Get.find<UserService>();
  UserModel? userModel;
  final String ApiUrl = 'http://localhost:8080/';
  var isDataLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    getUserInfoFromApi();
  }

  getUserInfoFromApi() async {
    print("start get user info");
    try {
      isDataLoading(true);
      final userUri = ApiUrl + 'user/' + 'koliche';
      final response = await get(Uri.parse(userUri), headers: {
        "Authorization":
            "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJrb2xpY2hlIiwicm9sZXMiOlsic3R1ZGVudCJdLCJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjgwODAvbG9naW4ifQ.Wv7vFcMNacHCIPUvgDAaMAfbUWpwSLNP9RZN0k85Y6A"
      });
      print(response.statusCode);
      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);
        userModel = UserModel.fromJson(result);
        print('user info in the service');
        print(userModel?.toJson());
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
