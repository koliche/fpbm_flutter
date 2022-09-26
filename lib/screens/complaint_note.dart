import 'package:flutter/material.dart';

import 'widgets/my_appBar.dart';
import 'widgets/my_drawer.dart';

class ComplaintNote extends StatelessWidget {
  const ComplaintNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      drawer: MyDrawer(),
      body: Center(child: Text("Réclamation note")),
    );
  }
}
