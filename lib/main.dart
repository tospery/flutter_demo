import 'dart:async';
import 'package:flutter/material.dart' hide Page;
import 'package:flutter_demo/component/core/index.dart';
import 'package:flutter_demo/module/index.dart';
import 'package:hi_flutter/hi_flutter.dart';

void main() {
  final logEmitter = getGlobalLogEmitter();
  runZoned(
        () => runApp(const MyApp()),
    zoneSpecification: ZoneSpecification(
      print: (Zone self, ZoneDelegate parent, Zone zone, String line) {
        parent.print(zone, line);
        // Intercept `print` function and redirect log.
        logEmitter.value = LogInfo(false, line);
      },
      handleUncaughtError: (Zone self, ZoneDelegate parent, Zone zone,
          Object error, StackTrace stackTrace) {
        parent.print(zone, '${error.toString()} $stackTrace');
        // Redirect error log event when error.
        logEmitter.value = LogInfo(true, error.toString());
      },
    ),
  );

  var onError = FlutterError.onError;
  FlutterError.onError = (FlutterErrorDetails details) {
    onError?.call(details);
    // Redirect error log event when error.
    logEmitter.value = LogInfo(true, details.toString());
  };
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final routesMap = mapRoutes(MyHomePage.getRoutes());
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        navigatorObservers: [HiNavigator.shared().routeObserver],
        routes: routesMap,
        onGenerateRoute: (RouteSettings settings) {
          String routeName = settings.name!.substring(1).toLowerCase();
          routeName = Uri.decodeComponent(routeName);
          return MaterialPageRoute(
            builder: routesMap[routeName] ??
                    (context) => const MyHomePage(title: 'Flutter Demo'),
          );
        },
        home: const MyHomePage(title: 'Flutter Demo'),
      );
    });
  }
}