import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_demo/core/case_binding.dart';
import 'package:flutter_demo/core/case_page.dart';
import 'package:flutter_demo/core/injection.dart';
import 'package:flutter_demo/core/routes.dart';
import 'package:flutter_demo/core/theme.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Injection.ready();
  runApp(
    GetMaterialApp(
      enableLog: true,
      logWriterCallback: (text, {bool isError = false}) {
        Future.microtask(() => log('$text, isError = $isError'));
      },
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.native,
      getPages: Routes.getPages,
      initialBinding: CaseBinding(),
      home: const CasePage(),
      theme: AppThemeData.defaultThemeData(Colors.blue),
      // builder: EasyLoading.init(),
    ),
  );
}