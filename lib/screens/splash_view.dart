import 'package:flutter/material.dart';
import 'package:fpbm/services/user_service.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

import '../services/auth_manager.dart';
import 'home.dart';
import 'login.dart';

class SplashView extends StatelessWidget {
  final AuthenticationManager authmanager = Get.find();
  final UserService service = Get.find();

  Future<void> initializeSettings() async {
    authmanager.checkLoginStatus();

    //Simulate other services for 3 seconds
    await Future.delayed(Duration(seconds: 3));
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: initializeSettings(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return waitingView();
        } else {
          if (snapshot.hasError)
            return errorView(snapshot);
          else {
            return OnBoard();
          }
        }
      },
    );
  }

  Scaffold errorView(AsyncSnapshot<Object?> snapshot) {
    print("error");
    return Scaffold(body: Center(child: Text('Error: ${snapshot.error}')));
  }

  Scaffold waitingView() {
    return Scaffold(
        body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CircularProgressIndicator(),
          ),
          Text('Loading...'),
        ],
      ),
    ));
  }
}

class OnBoard extends StatelessWidget {
  const OnBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthenticationManager _authManager = Get.find();

    return Obx(() {
      return _authManager.isLogged.value ? HomeView() : LoginView();
    });
  }
}
