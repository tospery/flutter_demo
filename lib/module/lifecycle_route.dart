import 'package:flutter/material.dart';
import 'package:hi_flutter/hi_flutter.dart';

class LifecycleRoute extends StatefulWidget {
  const LifecycleRoute({Key? key}) : super(key: key);

  @override
  State<LifecycleRoute> createState() => _LifecycleRouteState();
}

class _LifecycleRouteState extends State<LifecycleRoute> with RouteAware {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Lifecycle'),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    /// 路由订阅
    HiNavigator.shared().routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  @override
  void dispose() {
    /// 取消路由订阅
    HiNavigator.shared().routeObserver.unsubscribe(this);
    super.dispose();
  }

  /// 当前的页面被push显示到用户面前 viewWillAppear.
  @override
  void didPush() {
    log('didPush->viewWillAppear');
  }

  /// 当前的页面被pop viewWillDisappear.
  @override
  void didPop() {
    log('didPop->viewWillDisappear');
  }

  /// 上面的页面被pop后当前页面被显示时 viewWillAppear.
  @override
  void didPopNext() {
    log('didPopNext->viewWillAppear');
  }

  /// 从当前页面push到另一个页面 viewWillDisappear.
  @override
  void didPushNext() {
    log('didPushNext->viewWillDisappear');
  }
}
