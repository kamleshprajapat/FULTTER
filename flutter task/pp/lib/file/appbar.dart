import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pp/file/login_page.dart';
import 'package:pp/file/manu.dart';

class Appbar extends StatefulWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  State<Appbar> createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  int kamlesh = 0;
  List<Widget> mywidget = [
    Menu(),
    login(),
  ];
  void pizza(int index) {
    setState(() {
      kamlesh = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(child: mywidget.elementAt(kamlesh)),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.list_alt_rounded,
              ),
              label: "Listname",
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.fastfood_sharp,
              ),
              label: "Home page",
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.login,
              ),
              label: "Enter logn",
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.exit_to_app,
              ),
              label: "exit app",
              backgroundColor: Colors.grey),
        ],
        currentIndex: kamlesh,
        onTap: pizza,
      ),
    );
  }
}
