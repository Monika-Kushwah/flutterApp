import 'package:flutter/material.dart';
import 'package:flutterapp_monika/core/constant/colors_constant.dart';
import 'package:flutterapp_monika/core/constant/typography_constant.dart';
import 'package:flutterapp_monika/feature/home/controller/home_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: White,
      appBar: AppBar(
        //toolbarHeight: Get.height * 0.09,
        backgroundColor: White,
        elevation: 0,
        title: Text('Login', style: AppTextStyle.appTitle,),
        /*actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: CircleAvatar(
              radius: 24,
              backgroundColor: seconadryColor,
              child: IconButton(
                  onPressed: () async{
                  },
                  icon: Image.asset(
                    "assets/qrcode.png",
                    fit: BoxFit.scaleDown,
                    width: 24,
                  )),
            ),
          )
        ],*/
      ),
    );
  }
}