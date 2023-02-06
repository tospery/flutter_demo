import 'package:flutter/material.dart';
import 'package:flutter_demo/core/case_controller.dart';
import 'package:get/get.dart';

class CasePage extends GetView<CaseController> {
  const CasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('home'),
      ),
      body: Container(
        color: Colors.grey,
        child: Center(
          child: InkWell(
            onTap: controller.doTap,
            child: const Text(
              'get context from GetX',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}