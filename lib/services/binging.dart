import 'package:fpbm/services/auth_manager.dart';
import 'package:fpbm/services/login_service.dart';
import 'package:fpbm/services/user_service.dart';
import 'package:get/get.dart';

import '../models/login_view_model.dart';

class Binding implements Bindings {
  @override
  void dependencies() {
    Get.put(UserService(), permanent: true);
    Get.put(AuthenticationManager(), permanent: true);
    Get.put(LoginViewModel(), permanent: true);
    Get.put(LoginService(), permanent: true);
  }
}
