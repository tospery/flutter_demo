import 'package:flutter/material.dart'hide Page;
import 'package:flukit/example/example.dart';

Map<String, WidgetBuilder> mapRoutes(List<Page> pages) {
  return pages.fold(<String, WidgetBuilder>{}, (pre, page) {
    pre[page.title.toLowerCase()] = page.build;
    return pre;
  });
}