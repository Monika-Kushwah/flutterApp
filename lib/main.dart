import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'core/constant/get_pages_constant.dart';
import 'core/constant/route_constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // locale: LocalizationService.locale,
      // fallbackLocale: LocalizationService.fallbackLocale,
      // translations: LocalizationService(),
      textDirection: TextDirection.ltr,
      title: 'UBI',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // textTheme: GoogleFonts.nunitoSansTextTheme(
        //   Theme.of(context).textTheme,
        // ),
      ),
      getPages: getPages,
      initialRoute: RouteConstant.splashScreen,
    );
  }
}
