import 'package:application1/application_loginpage.dart';
import 'package:flutter/material.dart';

main() {
  runApp(Application());
}

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Application_loginpage(),
    );
  }
}
