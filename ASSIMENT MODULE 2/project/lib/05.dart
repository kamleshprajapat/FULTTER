import 'package:flutter/material.dart';

class five extends StatefulWidget {
  const five({super.key});

  @override
  State<five> createState() => _fifthState();
}

class _fifthState extends State<five> {
  double counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "$counter",
        style: TextStyle(fontSize: counter, color: Colors.orange),
      )),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            child: Icon(Icons.plus_one),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                counter--;
              });
            },
            child: Icon(Icons.minimize_sharp),
          )
        ],
      ),
    );
  }
}
