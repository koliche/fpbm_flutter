import 'package:flutter/material.dart';
import 'package:fpbm/screens/widgets/my_drawer.dart';

import 'widgets/my_appBar.dart';

class ModuleRegistrationClaim extends StatelessWidget {
  const ModuleRegistrationClaim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      drawer: MyDrawer(),
      body: Center(child: Text("Réclamation d'inscription en module")),
    );
  }
}
