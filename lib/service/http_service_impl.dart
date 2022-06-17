import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutterapp_monika/core/constant/url_constant.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/src/extension_instance.dart';

import 'http_service.dart';

class HttpServiceImpl implements HttpService {
  // Dio _dio;
  // Dio _dioHRM;
  // Dio _dioHRMApply;
  // Dio _dioHRMWithdraw;
 // String LoginUserEmployeeId;
//  String LoginUserOrgId;

  @override
  void init() {
    // _dio = Dio(BaseOptions(baseUrl: URLConstant.baseUrl));
    // _dioHRM = Dio(BaseOptions(baseUrl: URLConstantHRM.baseUrlhrm));
    // _dioHRMApply = Dio(BaseOptions(baseUrl: URLConstantHRMApply.baseUrlhrmApply));
    // _dioHRMWithdraw = Dio(BaseOptions(baseUrl: URLConstantHRMWithdraw.baseUrlhrmWithdraw));
    //getValue();
  }

/*  void getValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    LoginUserEmployeeId = prefs.getString('empId');
    LoginUserOrgId = prefs.getString('orgId');
  }*/


}


