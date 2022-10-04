import 'package:flutter/material.dart';
import 'package:fpbm/app_router.dart';
import 'package:fpbm/screens/splash_view.dart';
import 'package:get/get.dart';
import 'services/binging.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  Binding().dependencies();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: Binding(),
      title: 'Authentication Manager',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      initialRoute: '/splashScreen',
      getPages: AppRoutes.pages,
      debugShowCheckedModeBanner: false,
    );
  }
}
