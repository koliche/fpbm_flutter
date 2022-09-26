import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../services/auth_manager.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  MyAppBar({Key? key}) : super(key: key);

  AuthenticationManager authManager = Get.find();
  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        'Home',
        style: TextStyle(color: Colors.white),
      ),
      iconTheme: IconThemeData(color: Colors.white),
      actions: [
        IconButton(
            onPressed: () {
              authManager.logOut();
            },
            icon: Icon(
              Icons.logout_rounded,
              color: Colors.white,
            ))
      ],
    );
  }
}
