import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UIToastPage extends StatefulWidget {
  const UIToastPage({Key? key}) : super(key: key);

  @override
  State<UIToastPage> createState() => _UIToastPageState();
}

class _UIToastPageState extends State<UIToastPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('toast'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _doGetSnackBar,
              child: const Text('Get SnackBar'),
            ),
            ElevatedButton(
              onPressed: _doGWToast,
              child: const Text('GetWidget Toast'),
            ),
          ],
        ),
      ),
    );
  }

  void _doGetSnackBar() {
    Get.snackbar('Hi', 'i am a modern snackbar');
    // Get.snackbar(
    //   "Hey i'm a Get SnackBar!", // title
    //   "It's unbelievable! I'm using SnackBar without context, without boilerplate, without Scaffold, it is something truly amazing!", // message
    //   icon: Icon(Icons.alarm),
    //   shouldIconPulse: true,
    //   barBlur: 20,
    //   isDismissible: true,
    //   duration: Duration(seconds: 3),
    // );
  }

  void _doGWToast() {
  }

}
