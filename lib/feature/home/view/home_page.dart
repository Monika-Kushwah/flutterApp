
import 'package:flutter/material.dart';
import 'package:flutterapp_monika/core/constant/colors_constant.dart';
import 'package:flutterapp_monika/feature/home/controller/home_controller.dart';
import 'package:get/get.dart';


class HomePage extends GetView<HomeController>{
  const HomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor:appcolor,
        elevation: 0,
        leading: IconButton(
            icon: Icon(Icons.arrow_back,color: Colors.white,),
            onPressed: () {
              Get.back();
            }),
        title: Text('addemp'.tr, style: new TextStyle(fontSize: 22.0)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: Get.height,
            child: Column(
              children: const [
                Padding(
                    padding: EdgeInsets.only(top: 20),
                    child:
                    Text("Home View",
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          // fontFamily: 'cursive'
                        ))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

