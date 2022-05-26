import 'package:flutter/material.dart';

import 'basic/basic.dart';
import 'utils.dart';
import 'widget/widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: generateItem(
          context,
          [
            PageInfo("基础", (ctx) => const BasicRoute()),
            PageInfo("组件", (ctx) => const WidgetRoute()),
            PageInfo("事件", (ctx) => const BasicRoute()),
            PageInfo("通知", (ctx) => const BasicRoute()),
            PageInfo("动画", (ctx) => const BasicRoute()),
            PageInfo("文件操作", (ctx) => const BasicRoute()),
            PageInfo("网络请求", (ctx) => const BasicRoute()),
            PageInfo("本地化", (ctx) => const BasicRoute()),
            PageInfo("高级", (ctx) => const BasicRoute()),
          ],
        ),
      ),
    );
  }
}
