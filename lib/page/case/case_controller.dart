import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:flutter_demo/model/case.dart';
import 'package:flutter_demo/extension/string.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class CaseController extends GetxController {
  RxList<Case> list = <Case>[].obs;

  @override
  void onInit() async {
    super.onInit();
    var string = await rootBundle.loadString('res/data/cases.json');
    var json = string.toJsonArray() ?? [];
    var cases = json
        // .map((e) => Case.fromJson(e as Map<String, dynamic>? ?? {}))
        .map((e) => Case.fromJson(e))
        .toList();
    list.addAll(cases);
    update();
  }

  void doPressed(Case model, {extra}) {
    switch (model.id) {
      case 'toast':
        myToast();
        break;
      default:
        log('点击: $model');
        break;
    }
  }

  void myToast() {
    // Get.snackbar('Hi', 'i am a modern snackbar');
    // Get.snackbar(
    //   "Hey i'm a Get SnackBar!", // title
    //   "It's unbelievable! I'm using SnackBar without context, without boilerplate, without Scaffold, it is something truly amazing!", // message
    //   icon: Icon(Icons.alarm),
    //   shouldIconPulse: true,
    //   barBlur: 20,
    //   isDismissible: true,
    //   duration: Duration(seconds: 3),
    // );
    GFToast.showToast(
      'i am a modern snackbar',
      Get.overlayContext!,
    );
  }
}
