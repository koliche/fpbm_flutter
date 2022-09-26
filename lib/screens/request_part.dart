// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fpbm/screens/widgets/my_appBar.dart';
import 'package:fpbm/screens/widgets/my_drawer.dart';

class RequestPart extends StatelessWidget {
  const RequestPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      drawer: MyDrawer(),
      body: Center(child: Text("Demander une pièce")),
    );
  }
}
