import 'package:flutter/material.dart';
import 'package:hi_flutter/hi_flutter.dart';

class FutureRoute extends StatefulWidget {
  const FutureRoute({Key? key}) : super(key: key);

  @override
  State<FutureRoute> createState() => _FutureRouteState();
}

class _FutureRouteState extends State<FutureRoute> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        _buildTest1(context),
      ],
    );
  }

  _buildTest1(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        // var result = await Future.wait([
        //   test2(),
        //   test1(),
        // ]);
        // log('result: $result');

        // var result = await Future.any([
        //   test2(),
        //   test1(),
        // ]);
        // log('result: $result');
        
        // var result = await Future.forEach([
        //   test2(),
        //   test1(),
        // ], (element) {
        //
        // });

        // Future.any([
        //   test2(),
        //   test1(),
        // ]).then((value) {
        //   log('value: $value');
        // });

        // Future.forEach([
        //   test2(),
        //   test1(),
        //   test3(),
        // ], (future) async {
        //   await future;
        // }).then((value) {
        //   log('value: $value');
        // });

        await Future.wait([
          test2().then((value2) {
            log('value2: $value2');
          }),
          test1().then((value1) {
            log('value1: $value1');
          }),
          test3().then((value3) {
            log('value3: $value3');
          }),
        ]);
        log('执行完成');
      },
      child: Container(
        height: 55,
        color: Colors.red,
        child: Center(
          child: Text(
            'test1',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }

  Future<int> test1() async {
    await Future.delayed(const Duration(seconds: 1), () {
      print('1 finished'); // Prints after 1 second.
    });
    return Future<int>.value(1);
  }

  Future<int> test2() async {
    await Future.delayed(const Duration(seconds: 2), () {
      print('2 finished'); // Prints after 1 second.
    });
    return Future<int>.value(2);
  }

  Future<int> test3() async {
    await Future.delayed(const Duration(seconds: 3), () {
      print('3 finished'); // Prints after 1 second.
    });
    return Future<int>.value(3);
  }
}
