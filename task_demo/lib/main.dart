import 'package:flutter/material.dart';
import 'package:task_demo/home.dart';

import 'Api_task.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TaskDemo',
      home: DemoTask1(),
      // QuoteScreen(),
    );
  }
}
