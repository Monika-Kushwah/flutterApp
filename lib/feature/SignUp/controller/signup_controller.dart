import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp_monika/core/localdatabase/functions.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SignUpController extends GetxController {

  //SignUpController(){} //constructor of class

  GlobalKey<FormState> formKey =  GlobalKey<FormState>();

  TextEditingController nameController,emailController,phoneController,passwordController;


  @override
  void onInit() {

    super.onInit();
    nameController = TextEditingController();
    emailController = TextEditingController();
    phoneController = TextEditingController();
    passwordController = TextEditingController();
    getAll();

  }

  @override
  void onReady() {

    super.onReady();
  }

  @override
  void onClose() {
  }


  saveData() async {

    LocalDbfunction localsavesignup = LocalDbfunction.empty();

    LocalDbfunction localsavesignupsave = LocalDbfunction(
        name : nameController.text,
        email: emailController.text,
        phone : phoneController.text,
        password: passwordController.text,
    );
    await localsavesignupsave.saveSignUp();
    Get.snackbar(
        "Save Successfully!", "",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.orange,
        colorText: Colors.white
    );
    // getAll();

    }


    getAll() async {
    print("Get All Data");
    Get.snackbar(
      'User 123',
      'Successfully created',
    );
      if (kDebugMode) {
          print("Test");
      }
      var userProfile = LocalDbfunction.empty();

      List<LocalDbfunction> profileData = await userProfile.getLocalSaveData();
      await Future.forEach(profileData, (profileData) async {
        print(profileData.name);
        print(profileData.email);
        print("Rahul Dekhana chahata hai");
      });
    }
  }