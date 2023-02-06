import 'package:flutter/material.dart';
import 'package:flutter_demo/model/case.dart';
import 'package:flutter_demo/core/function.dart';
import 'package:getwidget/getwidget.dart';

class CaseCell extends StatelessWidget {
  final Case model;
  final CaseCellPressed? onPressed;

  get updateId => null;

  const CaseCell({
    super.key,
    required this.model,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GFListTile(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      titleText: model.title,
      color: Colors.white,
      onTap: () => onPressed != null ? onPressed!(model) : null,
    );
  }
}