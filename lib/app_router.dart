import 'package:fpbm/screens/home.dart';
import 'package:fpbm/screens/login.dart';
import 'package:fpbm/screens/splash_view.dart';
import 'package:fpbm/services/user_service.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final pages = [
    GetPage(name: '/splashScreen', page: () => SplashView()),
    GetPage(name: '/Login', page: () => LoginView()),
    GetPage(name: '/Home', page: () => HomeView()),
  ];
}
