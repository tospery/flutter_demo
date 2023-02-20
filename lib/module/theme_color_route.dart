import 'package:flutter/material.dart';
import 'package:hi_flutter/hi_flutter.dart';

class ThemeColorRoute extends StatefulWidget {
  const ThemeColorRoute({Key? key}) : super(key: key);

  @override
  State<ThemeColorRoute> createState() => _ThemeColorRouteState();
}

class _ThemeColorRouteState extends State<ThemeColorRoute> {
  @override
  Widget build(BuildContext context) {
    var a1 = "#FF333333".toColor()!;
    return ListView(
      shrinkWrap: true,
      children: [
        _buildItem(text: '333333', bgColor: "#FF333333".toColor(), fgColor: Colors.white),
        _buildItem(text: Colors.black26.toString(), bgColor: Colors.black26, fgColor: Colors.white),
        _buildItem(text: Colors.black.withOpacity(0.26).toString(), bgColor: Colors.black.withOpacity(0.26), fgColor: Colors.white),
        _buildItem(text: '0.grey', bgColor: Colors.grey.shade500),
        _buildItem(text: '1.cardColor', bgColor: context.theme.cardColor),
        _buildItem(text: '2.canvasColor', bgColor: context.theme.canvasColor),
        _buildItem(text: '3.hoverColor', bgColor: context.theme.hoverColor),
        _buildItem(text: '4.splashColor', bgColor: context.theme.splashColor),
        _buildItem(text: '5.highlightColor', bgColor: context.theme.highlightColor),
        _buildItem(text: '6.dividerColor', bgColor: context.theme.dividerColor),
        _buildItem(text: '7.indicatorColor', bgColor: context.theme.indicatorColor),
        _buildItem(text: '8.focusColor', bgColor: context.theme.focusColor),
        _buildItem(text: '9.hintColor', bgColor: context.theme.hintColor),
        _buildItem(text: '10.disabledColor', bgColor: context.theme.disabledColor),
        _buildItem(text: '11.shadowColor', bgColor: context.theme.shadowColor, fgColor: Colors.white),
        _buildItem(text: '12.colorScheme.surface', bgColor: context.theme.colorScheme.surface, fgColor: Colors.black),
        _buildItem(text: '13.colorScheme.inverseSurface', bgColor: context.theme.colorScheme.inverseSurface, fgColor: Colors.white),
        _buildItem(text: '14.scaffoldBackgroundColor', bgColor: context.theme.scaffoldBackgroundColor),
        _buildItem(text: '15.dialogBackgroundColor', bgColor: context.theme.dialogBackgroundColor),
        _buildItem(text: '16.secondaryHeaderColor', bgColor: context.theme.secondaryHeaderColor),
        _buildItem(text: '17.unselectedWidgetColor', bgColor: context.theme.unselectedWidgetColor),
        _buildItem(text: '18.primary', bgColor: context.theme.colorScheme.primary),
        _buildItem(text: '19.onPrimary', bgColor: context.theme.colorScheme.onPrimary),
        _buildItem(text: '20.primaryContainer', bgColor: context.theme.colorScheme.primaryContainer),
        _buildItem(text: '21.onPrimaryContainer', bgColor: context.theme.colorScheme.onPrimaryContainer),
        _buildItem(text: '22.secondary', bgColor: context.theme.colorScheme.secondary),
        _buildItem(text: '23.onSecondary', bgColor: context.theme.colorScheme.onSecondary),
        _buildItem(text: '24.secondaryContainer', bgColor: context.theme.colorScheme.secondaryContainer),
        _buildItem(text: '25.onSecondaryContainer', bgColor: context.theme.colorScheme.onSecondaryContainer),
      ],
    );
  }

  _buildItem({
    String? text,
    Color? bgColor,
    Color? fgColor,
  }) {
    return Container(
      // color: bgColor,
      height: 40,
      decoration: BoxDecoration(
        color: bgColor,
        border: hiBorder(color: Colors.red, bottom: true, width: 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text ?? '',
            style: TextStyle(color: fgColor ?? Colors.black, fontSize: 16),
          ),
          Text(
            bgColor?.hexString ?? '',
            // bgColor?.toString() ?? '',
            style: TextStyle(color: fgColor ?? Colors.black, fontSize: 16),
          )
        ],
      ),
    );
  }
}
