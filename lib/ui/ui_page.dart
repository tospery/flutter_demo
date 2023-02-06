import 'package:flutter/material.dart';
import 'package:flutter_demo/other/page_scaffold.dart';
import 'package:flutter_demo/ui/ui_aas_page.dart';

class UIPage extends StatefulWidget {
  const UIPage({super.key});

  @override
  State<UIPage> createState() => _UIPageState();
}

class _UIPageState extends State<UIPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: generateItem(
        context,
        [
          PageInfo('adaptive_action_sheet', const UIAasPage(),
              withScaffold: false),
        ],
      ),
    );
  }
}