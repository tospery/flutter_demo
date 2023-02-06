import 'dart:convert' as convert;
import 'package:flutter_demo/extension/int.dart';

extension StringEx on String {
  bool? toBool() {
    if (toLowerCase() == 'true') {
      return true;
    }
    if (toLowerCase() == 'false') {
      return false;
    }
    return toInt()?.toBool();
  }

  int? toInt() => int.tryParse(this);

  double? toDouble() => double.tryParse(this);

  List<dynamic>? toJsonArray() {
    try {
      var json = convert.json.decode(this);
      if (json is! List<dynamic>) {
        return null;
      }
      return json;
    } catch (e) {
      return null;
    }
  }
}