
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../Authentication_Screen/Signup_screen.dart';
import '../Authentication_Screen/login_Screen.dart';
import '../Authentication_Screen/securitypin_Screen.dart';
import '../Authentication_Screen/splash_screen.dart';
import '../Bottom Bar/BottomBar_Page.dart';
import '../Main_Screen/Home_Screen.dart';
import '../Main_Screen/Notification_Screen.dart';


class AppRoutes {
  static const String initial = '/';
  static const String Login_Screen = '/Login_Screen';
  static const String SignupScreen = '/Signup_Screen';
  static const String SecuritypinScreen = '/Securitypin_Screen';
  static const String BottombarPage = '/Bottombar_Page';
  static const String homescreen = '/home_screen';
  static const String notificationsscreen = '/notifications_screen';

  static final routes = [

    GetPage(
      name: initial,
      page: () => SplashScreen(),
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: Login_Screen,
      page: () => LoginScreen(),
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: SignupScreen,
      page: () => Signup_Screen(),
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: SecuritypinScreen,
      page: () => Securitypin_Screen(),
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: BottombarPage,
      page: () => Bottombar_Page(),
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade,
    ),



  ];
}
