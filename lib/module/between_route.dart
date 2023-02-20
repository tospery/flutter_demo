import 'package:flutter/material.dart';
import 'package:hi_flutter/hi_flutter.dart';

class BetweenRoute extends StatefulWidget {
  const BetweenRoute({Key? key}) : super(key: key);

  @override
  State<BetweenRoute> createState() => _BetweenRouteState();
}

class _BetweenRouteState extends State<BetweenRoute> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildFirst(context),
            _buildSecond(context),
            _buildThird(context),
          ],
        ),
      ),
    );
  }

  _buildFirst(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.red,
        child: Text(
          'first' * 3,
          style: TextStyle(fontSize: 18, color: Colors.white),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }

  _buildSecond(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.green,
        child: Text(
          'second',
          style: TextStyle(fontSize: 18, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  _buildThird(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.blue,
        child: Text(
          'third',
          style: TextStyle(fontSize: 18, color: Colors.white),
          textAlign: TextAlign.right,
        ),
      ),
    );
  }
}
