import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newapp/page/homepage.dart';
import 'package:newapp/page/loginpagae.dart';
import 'package:newapp/page/photo.dart';

class mainpage extends StatefulWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  int vishal = 0;

  List<Widget> mywidget = [
    login(),
    photo(),
    Homepage(),
  ];
  void monkey(int index) {
    setState(() {
      vishal = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: mywidget.elementAt(vishal)),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.login),
              label: "login",
              backgroundColor: Colors.pink),
          BottomNavigationBarItem(icon: Icon(Icons.image), label: "photo"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person"),
          BottomNavigationBarItem(icon: Icon(Icons.exit_to_app), label: "Exit")
        ],
        backgroundColor: Colors.black,
        currentIndex: vishal,
        onTap: monkey,
      ),
    );
  }
}
