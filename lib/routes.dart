import 'package:flutter_demo/home_binding.dart';
import 'package:flutter_demo/home_page.dart';
import 'package:get/get.dart';

class Routes {
  static const home = '/home';

  static final getPages = [
    GetPage(
      name: home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
  ];
}