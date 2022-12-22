import 'package:flutter/material.dart';
import 'package:login/page/loginpage.dart';
import 'package:login/page/loginpage.dart';

main() {
  runApp(login());
}

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginpage(),
    );
  }
}
