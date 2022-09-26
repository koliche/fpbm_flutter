class LoginResponseModel {
  String? token;
  dynamic role;
  String? username;

  LoginResponseModel({this.token, this.role, this.username});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    token = json['access_token'];
    role = json['role'];
    username = json['username'];
    // print(token);
    // print(role[0]['authority']);
  }
}
