import 'package:flutter_demo/core/case_binding.dart';
import 'package:flutter_demo/core/case_page.dart';
import 'package:get/get.dart';

class Routes {
  static const home = '/home';

  static final getPages = [
    GetPage(
      name: home,
      page: () => const CasePage(),
      binding: CaseBinding(),
    ),
  ];
}
