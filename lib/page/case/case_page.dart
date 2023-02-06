import 'package:flutter/material.dart';
import 'package:flutter_demo/cell/case_cell.dart';
import 'package:flutter_demo/page/case/case_controller.dart';
import 'package:get/get.dart';

class CasePage extends GetView<CaseController> {
  const CasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('home'),
      ),
      body: ListView.separated(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemCount: controller.list.length,
        itemBuilder: (context, index) => CaseCell(
          model: controller.list[index],
          onPressed: controller.doPressed,
        ),
        separatorBuilder: (context, index) => Divider(),
      ),
    );
  }
}
