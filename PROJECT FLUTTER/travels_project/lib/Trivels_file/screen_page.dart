import 'dart:async';
import 'package:flutter/material.dart';
import 'package:travels_project/Trivels_file/Login_peg.dart';

class screen_page extends StatefulWidget {
  const screen_page({super.key});

  @override
  State<screen_page> createState() => _screen_pageState();
}

class _screen_pageState extends State<screen_page> {
  @override
  void initState() {
    // TODO: implement setState
    super.initState();
    startTime();
  }

  startTime() async {
    var dynamic = Duration(seconds: 6);

    return new Timer(dynamic, Login_page);
  }

  Login_page() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Login()),
    );
  }

  Widget build(BuildContext context) {
    return initwidget();
  }

  initwidget() {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: new Color(0xffF5591f),
                gradient: LinearGradient(colors: [
                  (new Color(0xffF5591f)),
                  Color.fromARGB(255, 53, 214, 201)
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
          Center(
            child: Container(
              child: Image.asset("Assets/image/07.png"),
            ),
          ),
          Image.asset("Assets/image/png.png")
        ],
      ),
    );
  }
}
