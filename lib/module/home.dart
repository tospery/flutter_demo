import 'package:flutter/material.dart'hide Page;
import 'package:flukit/example/example.dart';
import 'package:flutter_demo/module/index.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  //防止热更新失效，我们不定义为静态变量
  static List<Page> getRoutes() {
    return [
      Page("Lifecycle", const LifecycleRoute()),
      Page("Between", const BetweenRoute(), padding: false),
      Page("ThemeColor", const ThemeColorRoute(), padding: false),
      // Page(
      //   "AccurateSizedBox",
      //   const AccurateSizedBoxRoute(),
      //   showLog: true,
      // ),
      // Page("AnimatedRotationBox", const AnimatedRotationBoxRoute()),
      // Page("DoneWidget", const DoneWidgetRoute()),
      // Page("GradientButton", const GradientButtonRoute()),
      // Page(
      //   "GradientCircularProgressIndicator",
      //   const GradientCircularProgressRoute(),
      // ),
      // Page(
      //   "KeepAlive Test",
      //   const KeepAliveTest(),
      //   padding: false,
      //   showLog: true,
      // ),
      // Page("LayoutLogPrint", const LayoutLogPrintRoute(), showLog: true),
      // Page("LeftRightBox", const LeftRightBoxRoute()),
      // Page("Log Panel", const LogListenerScopeRoute(), withScaffold: false),
      // Page(
      //   "OverflowWithTranslateBox",
      //   const OverflowWithTranslateRoute(),
      //   padding: false,
      // ),
      // Page("PullRefresh", const PullRefreshRoute(), padding: false),
      //
      // Page("Quick Scrollbar", const QuickScrollbarRoute(), padding: false),
      // Page("Swiper", const SwiperRoute()),
      // Page("Swiper Style", const SwiperStyleRoute()),
      // Page("ScaleView", const ScaleViewRoute(), padding: false),
      // Page(
      //   "SliverFlexibleHeader",
      //   const SliverFlexibleHeaderRoute(),
      //   padding: false,
      // ),
      // Page(
      //   "SliverHeaderDelegate",
      //   const SliverHeaderDelegateRoute(),
      //   padding: false,
      // ),
      // Page(
      //   "SliverPersistentHeaderToBox",
      //   const SliverPersistentHeaderToBoxRoute(),
      //   padding: false,
      // ),
      // Page("SlideTransitionX", const SlideTransitionXRoute()),
      // Page("TurnBox", const TurnBoxRoute()),
      // Page("WaterMark(水印)", const WatermarkRoute(), padding: false),
      // Page("AzListView", (ctx) => QuickSelectListViewRoute()),
    ];
  }

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: ListPage(
        children: MyHomePage.getRoutes(),
      ),
    );
  }
}