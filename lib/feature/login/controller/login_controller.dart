import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp_monika/core/constant/url_constant.dart';
import 'package:flutterapp_monika/core/localdatabase/functions.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';

import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class LoginController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController,passwordController;

  var serverConnected=0;
  @override
  void onInit() {

    super.onInit();


    emailController = TextEditingController();
    passwordController = TextEditingController();


  }

  @override
  void onReady() {

    super.onReady();
  }

  @override
  void onClose() {
  }

  login() async {

    LocalDbfunction login = LocalDbfunction(

      email: emailController.text,
      password: passwordController.text,
    );
 var map =   await login.loginSave(emailController.text,passwordController.text);

    print(map[0].name);
    print("login.loginSave");
    // Get.snackbar(
    //     "Login Successfully!", "",
    //     snackPosition: SnackPosition.BOTTOM,
    //     backgroundColor: Colors.orange,
    //     colorText: Colors.white
    // );

  }


  checkConnectionToServer () async{
    try {
      var uri = Uri.parse(URLConstant.baseUrl);
      var host=uri.host;
      //final result = await InternetAddress.lookup(host);
      //  final result = await InternetAddress.lookup("ubihrm.com")/*.timeout(const Duration(seconds: 2))*/;
      //http.Response response = await http.get('https://google.com')/*.timeout(const Duration(seconds: 7))*/;
      // print("response code"+response.statusCode.toString());
      //if (result.isNotEmpty && result[0].rawAddress.isNotEmpty &&response.statusCode==200 ) {

      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty){
//      if (response.statusCode==200 ) {
        print('connected');
        serverConnected=1;
      }else{
        serverConnected=0;
      }
    } on SocketException catch (_) {
      print('not connected');
      serverConnected=0;
    }on TimeoutException catch(_){
      serverConnected=0;
    }

    return serverConnected;
  }



}