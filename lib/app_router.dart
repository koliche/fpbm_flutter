import 'package:fpbm/screens/complaint_note.dart';
import 'package:fpbm/screens/home.dart';
import 'package:fpbm/screens/login.dart';
import 'package:fpbm/screens/module_registration_claim.dart';
import 'package:fpbm/screens/module_registration_complaint_response.dart';
import 'package:fpbm/screens/part_recovery.dart';
import 'package:fpbm/screens/reply_complaint_note.dart';
import 'package:fpbm/screens/request_part.dart';
import 'package:fpbm/screens/scholarship_claim.dart';
import 'package:fpbm/screens/splash_view.dart';
import 'package:fpbm/services/user_service.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final pages = [
    GetPage(name: '/splashScreen', page: () => SplashView()),
    GetPage(name: '/Login', page: () => LoginView()),
    GetPage(name: '/Home', page: () => HomeView()),
    GetPage(name: '/RequestPart', page: () => RequestPart()),
    GetPage(name: '/PartRecovery', page: () => PartRecovery()),
    GetPage(name: '/ComplaintNote', page: () => ComplaintNote()),
    GetPage(name: '/ReplyComplaintNote', page: () => ReplyComplaintNote()),
    GetPage(
        name: '/ModuleRegistrationClaim',
        page: () => ModuleRegistrationClaim()),
    GetPage(
        name: '/ModRegistComplaintResponse',
        page: () => ModuleRegistrationComplaintResponse()),
    GetPage(name: '/ScholarshipClaim', page: () => ScholarshipClaim()),
  ];
}
