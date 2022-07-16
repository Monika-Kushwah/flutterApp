import 'package:flutter/cupertino.dart';
import 'package:flutterapp_monika/core/constant/route_constant.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'database.dart';

class LocalDbfunction {


  int Id;
  var name;
  var phone;
  var email;
  var password;

  LocalDbfunction({this.Id, this.name, this.phone, this.email,this.password});

 LocalDbfunction.empty();

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'Id': Id,
      'Name': name,
      'Phone': phone,
      'Email': email,
      'Password': password,
    };
    return map;
  }

  LocalDbfunction.fromMap(Map<String, dynamic>map){
      Id=map['Id'];
      name=map['Name'];
      phone=map['Phone'];
      email=map['Email'];
      password=map['Password'];
  }

  Future<LocalDbfunction> saveSignUp() async {
    DbHelper dbHelper= DbHelper();
    var dbClient = await dbHelper.db;
    this.Id= await dbClient.insert('sign_up', this.toMap());
    //print(this.Id);
    return this;
  }


  Future<List<LocalDbfunction>> getLocalSaveData() async{

    DbHelper dbHelper= DbHelper();
    var dbClient = await dbHelper.db;
    List<Map> maps= await dbClient.query('sign_up',columns: [
      'Id',
      'Name',
      'Phone',
      'Email',
      'Password',
    ]);
    print(maps);
    List<LocalDbfunction> spl=[];
    if(maps.length > 0){
      print("Map s");
      for (int i=0;i<maps.length;i++){

        print(maps[i]);
        spl.add(LocalDbfunction.fromMap(maps[i]));
      }
    }
    return spl;
  }

  Future<List<LocalDbfunction>>loginSave(email,password) async {
    DbHelper dbHelper=new DbHelper();
    var dbClient = await dbHelper.db;

    List<Map> maps = await dbClient.rawQuery("SELECT *  FROM `sign_up` WHERE `Email`=? AND `Password`=?",
        [email.toString(), password.toString()]);
    List<LocalDbfunction> ams=[];
    print(maps);
    if(maps.length>0){
      for (int i=0;i<maps.length;i++){
        ams.add(LocalDbfunction.fromMap(maps[i]));
      }
    }

    if(maps.length ==1 )
      {
        Get.offAllNamed(RouteConstant.home);
      }else{
      print("Password Incorect");
    }
    debugPrint(maps.toString());
    print("selected Attendance");
    return ams;

  }





}