import 'package:flutter/material.dart';
import 'package:sp/task3.dart';

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AlertDialogExample_03()));
          },
          child: Text(
            "Click to nextpage",
          ),
        ),
      ),
    );
  }
}
