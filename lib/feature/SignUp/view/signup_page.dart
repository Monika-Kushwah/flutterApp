import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp_monika/core/constant/route_constant.dart';
import 'package:flutterapp_monika/feature/SignUp/controller/signup_controller.dart';
import 'package:get/get.dart';

class SignUpView extends GetView<SignUpController>{
  const SignUpView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(title: const Text('Create new Account!',style: TextStyle(
        color: Colors.black54,
          fontWeight: FontWeight.bold,
          fontSize: 30.0,
          fontStyle: FontStyle.italic,))),
        body:SingleChildScrollView(
            child :
            Column(
                children: [
                  // const SizedBox(height: 30,),
                  // const Center(child: Text('Create new Account!',style: TextStyle(
                  //   color: Colors.black54,
                  //   fontWeight: FontWeight.bold,
                  //   fontSize: 30.0,
                  //   fontStyle: FontStyle.italic,),)
                  // ),
                  Center(
                    child: Container(
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.all(30),
                        child: const Text(
                          'Please fill the form to Continue',
                          style: TextStyle(color: Colors.black54,
                            fontWeight: FontWeight.normal,
                            fontSize: 18.0,
                            fontStyle: FontStyle.italic,),
                        )),
                  ),
                  Form(
                    key : controller.formKey,
                    child:
                    Column(
                      children: [
                        Container(
                            padding: const EdgeInsets.all(10),
                            child: TextFormField(
                                validator: (value) {
                                  if(value=="" || value == null){
                                    return "Name is empty";
                                  }
                                  return null;
                                },
                               // controller:controller.nameController,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  prefixIcon:  Icon(Icons.person_add,color: Colors.black54,),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                  labelText: 'Full Name',hintStyle: TextStyle(color: Colors.black54,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18.0,
                                  fontStyle: FontStyle.italic,)))),
                        Container(
                            padding: const EdgeInsets.all(10),
                            child: TextFormField(
                                validator: (value) {
                                  if(value=="" || value == null){
                                    return "email is empty";
                                  }
                                  return null;
                                },
                               // controller: controller.EmailController,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  prefixIcon:  Icon(Icons.mail,color: Colors.black54,),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                  labelText: 'Email',))),
                        Container
                          (
                            padding: const EdgeInsets.all(10),
                            child:  TextFormField(
                                validator: (value) {
                                  if(value=="" || value == null){
                                    return "phone is empty";
                                  }
                                  return null;
                                },
                               // controller: controller.phoneController,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  prefixIcon:  Icon(Icons.phone_android,color: Colors.black54,),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                  suffixIcon: Align(
                                    widthFactor: 1.0,
                                    heightFactor: 1.0,
                                  ),
                                  labelText: 'Phone number',))),
                        Container(
                            padding: const EdgeInsets.all(10),
                            child:  TextFormField(
                                validator: (value) {
                                  if(value=="" || value == null){
                                    return "password is empty";
                                  }
                                  return null;
                                },
                                //controller: controller.passwordController,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  prefixIcon:  Icon(Icons.lock,color: Colors.black54,),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                  suffixIcon: Align(
                                      widthFactor: 1.0,
                                      heightFactor: 1.0,
                                      child: Icon(
                                        Icons.remove_red_eye,color: Colors.black54,
                                      )
                                  ),
                                  labelText: 'Your Password',))),

                        const SizedBox(height: 15,),
                        SizedBox(width: 200.0,
                          height: 50.0,
                          child: ElevatedButton(style:
                          ButtonStyle(shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              )
                          )
                          ),
                              // borderRadius: BorderRadius.all(Radius.circular(20.0))
                              onPressed: () async {

                                  controller.saveData();
                                // bool connection = await checkConnectivity();
                                // if (connection == true) {
                                //   final isValid = controller.formKey.currentState.validate();
                                //   if (!isValid) {
                                //     return;
                                //   }
                                // } else {
                                //   showDialog(
                                //       context: context,
                                //       builder: (context) {
                                //         return  AlertDialog( content: Text('UnableToConnectServerText'.tr),
                                //         );
                                //       });
                                // }


                              }, child: const Text('Sign Up',)),
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('I Already have Account?'),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 5.0,
                              ),
                              child: InkWell(
                                child: const Padding(
                                  padding:
                                  EdgeInsets.symmetric(vertical: 5.0),
                                  child: Text('Login',
                                    // style: AppTextStyle.textWithPrimary,
                                  ),
                                ),
                                onTap: () {
                                  Get.toNamed(RouteConstant.login);
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ]
            )
        )
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