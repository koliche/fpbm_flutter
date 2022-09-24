import 'dart:developer';

class LoginResponseModel {
  String? token;
  dynamic? role;

  LoginResponseModel({this.token, this.role});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    token = json['access_token'];
    role = json['role'];
    print(token);
    print(role[0]['authority']);
  }
}
