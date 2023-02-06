
import 'package:get/get.dart';

class CaseController extends GetxController {

  void doTap() {
    var context = Get.context;
    if (context == null) {
      return;
    }
    // GFToast.showToast('this is message', context);
  }

}