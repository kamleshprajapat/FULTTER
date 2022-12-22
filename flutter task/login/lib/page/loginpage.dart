import 'package:flutter/material.dart';
import 'package:login/page/account.dart';
import 'package:login/page/homepage.dart';
import 'package:login/page/login.dart';

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  int kamlesh = 0;

  List<Widget> mywidget = [
    homepage(),
    account(),
    kingkong(),
  ];
  void ontab(int index) {
    setState(() {
      kamlesh = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.snapchat),
        title: Text("Snapchat"),
      ),
      body: Center(child: mywidget.elementAt(kamlesh)),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'person'),
          BottomNavigationBarItem(icon: Icon(Icons.login), label: 'login')
        ],
        backgroundColor: Colors.amber,
        currentIndex: kamlesh,
        onTap: ontab,
      ),
    );
  }
}
