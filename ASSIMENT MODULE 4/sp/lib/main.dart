import 'package:flutter/material.dart';
import 'package:sp/Assignments.dart';
import 'package:sp/task1/task2.dart';
import 'package:sp/task14.dart';
import 'package:sp/task3.dart';
import 'package:sp/task4u.dart';
import 'package:sp/task5.dart';
import 'package:sp/task6.dart';
import 'package:sp/task8.dart';
import 'package:sp/task9.dart';

main() {
  runApp(Assignments());
}

class Assignments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApplication(),
    );
  }
}
