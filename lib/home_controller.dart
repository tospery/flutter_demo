import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class HomeController extends GetxController {

  void doTap() {
    var context = Get.context;
    if (context == null) {
      return;
    }
    GFToast.showToast('this is message', context);
  }

}