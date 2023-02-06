import 'package:flutter_demo/core/case_controller.dart';
import 'package:get/get.dart';

class CaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CaseController>(() => CaseController());
  }
}
