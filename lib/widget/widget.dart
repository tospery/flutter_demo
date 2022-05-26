import 'package:flutter/material.dart';
import 'package:flutter_demo/utils.dart';
import 'package:flutter_demo/widget/foundation/foundation_widget.dart';

class WidgetRoute extends StatelessWidget {
  const WidgetRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: generateItem(
          context,
          [
            PageInfo("基础组件", (ctx) => const FoundationWidgetRoute()),
            PageInfo("布局组件", (ctx) => const WidgetRoute()),
            PageInfo("容器组件", (ctx) => const WidgetRoute()),
            PageInfo("可滚动组件", (ctx) => const WidgetRoute()),
            PageInfo("功能型组件", (ctx) => const WidgetRoute()),
            PageInfo("自定义组件", (ctx) => const WidgetRoute()),
          ],
        ),
      );
  }
}
