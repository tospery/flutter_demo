import 'package:flutter/material.dart';
import 'package:hi_flutter/hi_flutter.dart';

class TextStyleRoute extends StatefulWidget {
  const TextStyleRoute({Key? key}) : super(key: key);

  @override
  State<TextStyleRoute> createState() => _TextStyleRouteState();
}

class _TextStyleRouteState extends State<TextStyleRoute> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        _buildItem('bodySmall', context.textTheme.bodySmall),
      ],
    );
  }

  _buildItem(String text, TextStyle? bodySmall) {
    return Container(
      color: Colors.grey.shade100,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(text),
            Text(bodySmall?.toString() ?? ''),
          ],
        ),
      ),
    );
  }

}
