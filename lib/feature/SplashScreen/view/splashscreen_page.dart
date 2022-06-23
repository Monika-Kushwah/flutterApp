import 'package:flutter/material.dart';
import 'package:flutterapp_monika/feature/SplashScreen/controller/splashscreen_controller.dart';
import 'package:get/get.dart';

class SplashScreenPage extends GetView<SplashScreenController> {
  const SplashScreenPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: SplashScreenController(),
        builder: (_) => Scaffold(
          body: Center(
            child: Image.asset('assets/SplaseScreen.gif'),
          ),
        )
    );
  }
}