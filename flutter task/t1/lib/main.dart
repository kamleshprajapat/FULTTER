import 'package:flutter/material.dart';

main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  gradient: LinearGradient(
                      colors: [Colors.orange, Colors.purple],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight),
                ),
                child: Container(
                  height: 500,
                  width: 600,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      gradient: RadialGradient(colors: [
                        Colors.blue,
                        Colors.purple,
                      ], radius: 0.75)),
                ),
              ),
              Container(
                height: 400,
                width: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  gradient: SweepGradient(
                    colors: [
                      Colors.blue,
                      Colors.pink,
                      Colors.yellow,
                      Colors.deepOrange,
                      Colors.black
                    ],
                  ),
                ),
                child: Container(
                  height: 400,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.shade300,
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(7, 9),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
