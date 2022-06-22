import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutterapp_monika/core/constant/colors_constant.dart';
import 'package:flutterapp_monika/core/constant/route_constant.dart';
import 'package:flutterapp_monika/core/constant/validator.dart';
import 'package:get/get.dart';
import '../controller/home_controller.dart';


class HomePage extends GetView<HomeController>{
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Login View",
        style: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
            fontStyle: FontStyle.italic,
           // fontFamily: 'cursive'
        ),

      ),
          toolbarHeight: Get.height * 0.09,
          backgroundColor: White,
          elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: Get.height,
            child: Column(
              children: [
                 const SizedBox(height: 100,),
                // const Center(child: Text('Welcome Back!',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),)),
                Form(
                    key : controller.formKey,
                    child: Column(
                      children: [
                        Container(
                            padding: const EdgeInsets.all(10),
                            child: TextFormField(
                                validator: (value) {
                                  return Validator.ValidateEmail(value);
                                },
                                //controller: controller.emailController,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  prefixIcon:  Icon(Icons.mail,color: Colors.black54,),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                  labelText: 'Enter Email/Phone No.',)
                            )
                        ),
                        Container(
                            padding: const EdgeInsets.all(10),
                            child: TextFormField(
                                validator: (value) {
                                  return Validator.ValidateEmail(value);
                                },
                               // controller:controller.passwordController,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  prefixIcon:  Icon(Icons.lock, color: Colors.black54,),
                                  enabledBorder: OutlineInputBorder(
                                   borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                   suffixIcon: Align(
                                      widthFactor: 1.0,
                                      heightFactor: 1.0,
                                      //child: Icon(Icons.remove_red_eye,)
                                  ),
                                  labelText: 'Enter Password',))),
                      ],
                    )
                ),
                const SizedBox(height: 20,),
                SizedBox(width: 150.0,
                  height: 40.0,
                  child: ElevatedButton(style:
                  ButtonStyle(shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      )
                    )
                  ),
                      // borderRadius: BorderRadius.all(Radius.circular(20.0))
                      onPressed: () async {
                        bool connection = await checkConnectivity();
                        if (connection == true) {
                          final isValid = controller.formKey.currentState.validate();
                          if (!isValid) {
                            return;
                          }
                        } else {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return const AlertDialog(
                                  content: Text('Check you internet connectivity'),
                                );
                              });
                        }
                      },
                      child: const Text('Login',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        fontStyle: FontStyle.italic,
                      ),)),
                ),
          /*      const SizedBox(height: 30,),
                SizedBox(width: 200.0,
                    height: 50.0,
                    child: SignInButton(
                      Buttons.Google,
                      text: "Sign up with Google",
                      onPressed: () {
                      },
                    )
                ),*/
                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('I dont have Account?',style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      fontStyle: FontStyle.italic,
                    ),),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 5.0,
                      ),
                      child: InkWell(
                        child: const Padding(
                          padding:
                          EdgeInsets.symmetric(vertical: 5.0),
                          child: Text('SignUp',style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            fontStyle: FontStyle.italic,
                          ),
                            // style: AppTextStyle.textWithPrimary,
                          ),
                        ),
                        onTap: () {
                         Get.toNamed(RouteConstant.signUp);
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

checkConnectivity() async {
  var connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.mobile || connectivityResult == ConnectivityResult.wifi) {
    return true;
  } else {
    return false;
  }
}
