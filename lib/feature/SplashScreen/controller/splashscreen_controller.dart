import 'dart:async';
import 'package:flutterapp_monika/core/constant/route_constant.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SplashScreenController extends GetxController {

  SplashScreenController(){} //constructor of class


  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    Timer(const Duration(seconds: 8), () =>  Get.offAllNamed(RouteConstant.home));
    super.onReady();
  }

  @override
  void onClose() {
  }
}