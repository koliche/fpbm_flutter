import 'package:flutter/material.dart';

import 'widgets/my_appBar.dart';
import 'widgets/my_drawer.dart';

class ResponseToScholarshipClaim extends StatelessWidget {
  const ResponseToScholarshipClaim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      drawer: MyDrawer(),
      body: Center(child: Text("Réponse réclamation bourse")),
    );
  }
}
