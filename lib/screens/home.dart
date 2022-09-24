import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../services/auth_manager.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  AuthenticationManager _authManager = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Home',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  _authManager.logOut();
                },
                icon: Icon(
                  Icons.logout_rounded,
                  color: Colors.white,
                ))
          ],
        ),
        body: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'App Logo',
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              ListTile(
                title: Text(
                  'Full Name',
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Mohamed Ait Koliche',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Divider(),
              ListTile(
                title: Text(
                  'Code APOGEE',
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  '21015041',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Divider(),
            ],
          ),
        ));
  }
}
