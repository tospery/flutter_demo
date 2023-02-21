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
    var a1 = Colors.grey.shade500;
    var a2 = "#FF9E9E9E".toColor()!;
    if (a1 == a2) {
      log('相等的color');
    }
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
        _buildItem(text: Colors.grey.toHexString(), bgColor: Colors.grey.shade500),
        _buildItem(text: Colors.grey.shade500.toString(), bgColor: Colors.grey.shade500),
        _buildItem(text: a2.toHexString(), bgColor: a2),
        _buildItem(text: '白色', bgColor: Colors.white),
        _buildItem(text: Colors.white.toHexString(), bgColor: Colors.white, fgColor: Colors.black),
        _buildItem(text: Colors.white10.toHexString(), bgColor: Colors.white10, fgColor: Colors.black),
        _buildItem(text: Colors.white12.toHexString(), bgColor: Colors.white12, fgColor: Colors.black),
        _buildItem(text: Colors.white24.toHexString(), bgColor: Colors.white24, fgColor: Colors.black),
        _buildItem(text: Colors.white30.toHexString(), bgColor: Colors.white30, fgColor: Colors.black),
        _buildItem(text: Colors.white38.toHexString(), bgColor: Colors.white38, fgColor: Colors.black),
        _buildItem(text: Colors.white54.toHexString(), bgColor: Colors.white54, fgColor: Colors.black),
        _buildItem(text: Colors.white60.toHexString(), bgColor: Colors.white60, fgColor: Colors.black),
        _buildItem(text: Colors.white70.toHexString(), bgColor: Colors.white70, fgColor: Colors.black),
        _buildItem(text: '黑色', bgColor: Colors.black, fgColor: Colors.white),
        _buildItem(text: Colors.black.toHexString(), bgColor: Colors.black, fgColor: Colors.white),
        _buildItem(text: Colors.black12.toHexString(), bgColor: Colors.black12, fgColor: Colors.white),
        _buildItem(text: Colors.black26.toHexString(), bgColor: Colors.black26, fgColor: Colors.white),
        _buildItem(text: Colors.black38.toHexString(), bgColor: Colors.black38, fgColor: Colors.white),
        _buildItem(text: Colors.black45.toHexString(), bgColor: Colors.black45, fgColor: Colors.white),
        _buildItem(text: Colors.black54.toHexString(), bgColor: Colors.black54, fgColor: Colors.white),
        _buildItem(text: Colors.black87.toHexString(), bgColor: Colors.black87, fgColor: Colors.white),
        _buildItem(text: '灰色', bgColor: Colors.grey, fgColor: Colors.white),
        _buildItem(text: Colors.grey.shade50.toHexString(), bgColor: Colors.grey.shade50, fgColor: Colors.black),
        _buildItem(text: Colors.grey.shade100.toHexString(), bgColor: Colors.grey.shade100, fgColor: Colors.black),
        _buildItem(text: Colors.grey.shade200.toHexString(), bgColor: Colors.grey.shade200, fgColor: Colors.black),
        _buildItem(text: Colors.grey.shade300.toHexString(), bgColor: Colors.grey.shade300, fgColor: Colors.black),
        _buildItem(text: Colors.grey.shade400.toHexString(), bgColor: Colors.grey.shade400, fgColor: Colors.black),
        _buildItem(text: Colors.grey.shade500.toHexString(), bgColor: Colors.grey.shade500, fgColor: Colors.black),
        _buildItem(text: Colors.grey.shade600.toHexString(), bgColor: Colors.grey.shade600, fgColor: Colors.white),
        _buildItem(text: Colors.grey.shade700.toHexString(), bgColor: Colors.grey.shade700, fgColor: Colors.white),
        _buildItem(text: Colors.grey.shade800.toHexString(), bgColor: Colors.grey.shade800, fgColor: Colors.white),
        _buildItem(text: Colors.grey.shade900.toHexString(), bgColor: Colors.grey.shade900, fgColor: Colors.white),
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
            bgColor?.toHexString() ?? '',
            style: TextStyle(color: fgColor ?? Colors.black, fontSize: 16),
          )
        ],
      ),
    );
  }
}
