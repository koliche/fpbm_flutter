// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fpbm/models/user_model.dart';
import 'package:fpbm/services/user_service.dart';
import 'package:get/get.dart';

import '../services/auth_manager.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  AuthenticationManager authManager = Get.find();
  UserService service = Get.find();

  @override
  void initState() {
    super.initState();
    print("user info in home");
    //print(_service.userModel?.toJson());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Home',
            style: TextStyle(color: Colors.white),
          ),
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
        ),
        body: Container(
            child: GetBuilder<UserService>(
          builder: (userService) => Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 5),
                    child: Image.asset('images/fp.png'),
                  ),
                ],
              ),
              ListTile(
                title: Text(
                  "Nom Prenom",
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  userService.userModel!.nom!.toString() +
                      " " +
                      userService.userModel!.prenom!.toString(),
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
                  userService.userModel!.nbApogee!.toString(),
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Divider(),
              ListTile(
                title: Text(
                  'CIN',
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  userService.userModel!.cin!.toString(),
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Divider(),
              ListTile(
                title: Text(
                  'CNE',
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  userService.userModel!.cne!.toString(),
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Divider(),
              ListTile(
                title: Text(
                  'Date naissance',
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  userService.userModel!.dateDeNaissance!.toString(),
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Divider(),
            ],
          ),
        )));
  }
}
