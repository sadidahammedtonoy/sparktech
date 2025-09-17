import 'package:get/get.dart';
import 'package:sparktech/Presentation/UI/feature/splash/View/splash.dart';

import '../Core/Local Data/profile_data.dart';
import '../Presentation/UI/feature/auth/forget_password/Screens/setPassword/View/set_password.dart';
import '../Presentation/UI/feature/auth/forget_password/Screens/verify/View/verify.dart';
import '../Presentation/UI/feature/auth/forget_password/View/forget_password.dart';
import '../Presentation/UI/feature/auth/login/View/login.dart';
import '../Presentation/UI/feature/auth/signup/View/signup.dart';
import '../Presentation/UI/feature/home/Screens/edit_task/View/edit_task.dart';
import '../Presentation/UI/feature/navbar/View/navbar.dart';
import '../Presentation/UI/feature/onBording/View/onbording.dart';
import '../Presentation/UI/feature/profile/View/profile.dart';

class routes {
  static const String Splash = '/splash';
  static const String onBording_screen = '/onBording';
  static const String login_page_screen = '/login_page';
  static const String sign_up_screen = '/sign_up';
  static const String forget_password_screen = '/forget_password';
  static const String Verify_screen = '/Verify';
  static const String set_password_screen = '/set_password';
  static const String navbar_screen = '/navbar';
  static const String edit_task_screen = '/edit_task';
  static const String profile_screen = '/profile';


  static final pages = [
    GetPage(name: Splash, page: () =>  splash()),
    GetPage(name: onBording_screen, page: () =>  onBording()),
    GetPage(name: login_page_screen, page: () =>  login_page()),
    GetPage(name: sign_up_screen, page: () =>  sign_up()),
    GetPage(name: forget_password_screen, page: () =>  forget_password()),
    GetPage(name: Verify_screen, page: () =>  Verify()),
    GetPage(name: set_password_screen, page: () =>  set_password()),
    GetPage(name: navbar_screen, page: () =>  Navbar()),
    GetPage(name: edit_task_screen, page: () =>  edit_task()),
    GetPage(name: profile_screen, page: () =>  profile_page()),

  ];



}
