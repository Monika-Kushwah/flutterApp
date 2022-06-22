import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  RxBool passwordEye = false.obs;
  void passwordEyeToggle(){
    passwordEye.value = passwordEye.value ? false : true;
  }
}