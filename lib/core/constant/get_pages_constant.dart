import 'package:flutterapp_monika/core/constant/route_constant.dart';
import 'package:flutterapp_monika/feature/SignUp/binding/signup_binding.dart';
import 'package:flutterapp_monika/feature/SignUp/view/signup_page.dart';
import 'package:flutterapp_monika/feature/SplashScreen/binding/splashscreen_binding.dart';
import 'package:flutterapp_monika/feature/SplashScreen/view/splashscreen_page.dart';
import 'package:flutterapp_monika/feature/home/binding/login_binding.dart';
import 'package:flutterapp_monika/feature/home/view/login_page.dart';
import 'package:get/get.dart';

List<GetPage> getPages = [
  GetPage(
      name: RouteConstant.login,
      page: () => const HomePage(),
      binding: HomeBinding()),

  GetPage(
      name: RouteConstant.splashScreen,
      page: () => const SplashScreenPage(),
      binding: SplashScreenBinding()),

  GetPage(
      name: RouteConstant.signUp,
      page: () => const SignUpView(),
      binding: SignUpBinding()),
];
