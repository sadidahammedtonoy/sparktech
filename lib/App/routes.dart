import 'package:get/get.dart';
import 'package:sparktech/Presentation/UI/feature/splash/View/splash.dart';

import '../Presentation/UI/feature/auth/login/View/login.dart';
import '../Presentation/UI/feature/onBording/View/onbording.dart';

class routes {
  static const String Splash = '/splash';
  static const String onBording_screen = '/onBording';
  static const String login_page_screen = '/login_page';


  static final pages = [
    GetPage(name: Splash, page: () =>  splash()),
    GetPage(name: onBording_screen, page: () =>  onBording()),
    GetPage(name: login_page_screen, page: () =>  login_page()),

  ];



}
