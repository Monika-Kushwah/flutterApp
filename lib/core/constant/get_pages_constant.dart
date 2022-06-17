import 'package:flutterapp_monika/core/constant/route_constant.dart';
import 'package:flutterapp_monika/feature/home/binding/home_binding.dart';
import 'package:flutterapp_monika/feature/home/view/home_page.dart';
import 'package:get/get.dart';

List<GetPage> getPages = [
  GetPage(
      name: RouteConstant.home,
      page: () => const HomePage(),
      binding: HomeBinding()),
];
