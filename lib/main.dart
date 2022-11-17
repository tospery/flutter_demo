import 'package:flutter/material.dart';
import 'package:flutter_demo/home_binding.dart';
import 'package:flutter_demo/home_page.dart';
import 'package:flutter_demo/routes.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(
      // navigatorKey: Get.key,
      debugShowCheckedModeBanner: false,
      getPages: Routes.getPages,
      defaultTransition: Transition.native,
      initialBinding: HomeBinding(),
      home: const HomePage(),
    ),
  );
}