
import 'package:flutter/material.dart';
import 'package:flutter_demo/utils.dart';
import 'package:flutter_demo/widget/foundation/text.dart';

class FoundationWidgetRoute extends StatelessWidget {
  const FoundationWidgetRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: generateItem(
          context,
          [
            PageInfo("文本", (ctx) => const TextTestRoute()),
          ],
        ),
      );
  }
}