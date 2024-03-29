// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../services/auth_manager.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({Key? key}) : super(key: key);
  AuthenticationManager authManager = Get.find();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(''),
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage("images/fp.png"), fit: BoxFit.scaleDown)),
          ),
          ListTile(
            title: Text('Home'),
            tileColor: Get.currentRoute == '/' ? Colors.grey[300] : null,
            onTap: () {
              print(Get.currentRoute);
              Get.back();
              Get.offNamed('/Home');
            },
          ),
          ListTile(
            title: Text('Demander une pièce'),
            tileColor: Get.currentRoute == '/' ? Colors.grey[300] : null,
            onTap: () {
              Get.back();
              Get.offNamed('/RequestPart');
            },
          ),
          ListTile(
            title: Text('récupération pièce'),
            tileColor: Get.currentRoute == '/' ? Colors.grey[300] : null,
            onTap: () {
              Get.back();
              Get.offNamed('/PartRecovery');
            },
          ),
          ListTile(
            title: Text('Réclamation note'),
            tileColor: Get.currentRoute == '/' ? Colors.grey[300] : null,
            onTap: () {
              Get.back();
              Get.offNamed('/ComplaintNote');
            },
          ),
          ListTile(
            title: Text('Réponse réclamation note'),
            tileColor: Get.currentRoute == '/' ? Colors.grey[300] : null,
            onTap: () {
              Get.back();
              Get.offNamed('/ReplyComplaintNote');
            },
          ),
          ListTile(
            title: Text('Réclamation d\'inscription en module'),
            tileColor: Get.currentRoute == '/' ? Colors.grey[300] : null,
            onTap: () {
              Get.back();
              Get.offNamed('/ModuleRegistrationClaim');
            },
          ),
          ListTile(
            title: Text('Réponse réclamation d\'inscription en module'),
            tileColor: Get.currentRoute == '/' ? Colors.grey[300] : null,
            onTap: () {
              Get.back();
              Get.offNamed('/ModRegistComplaintResponse');
            },
          ),
          ListTile(
            title: Text('Réclamation bourse'),
            tileColor: Get.currentRoute == '/' ? Colors.grey[300] : null,
            onTap: () {
              Get.back();
              Get.offNamed('/ScholarshipClaim');
            },
          ),
          ListTile(
            title: Text('Réponse réclamation bourse'),
            tileColor: Get.currentRoute == '/' ? Colors.grey[300] : null,
            onTap: () {
              Get.back();
              Get.offNamed('/ScholarshipClaim');
            },
          ),
          ListTile(
            title: Text('Déconnexion'),
            tileColor: Get.currentRoute == '/' ? Colors.grey[300] : null,
            onTap: () {
              Get.back();
              authManager.logOut();
            },
          ),
        ],
      ),
    );
  }
}
