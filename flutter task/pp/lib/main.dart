import 'package:flutter/material.dart';
import 'package:pp/file/login_page.dart';

main() {
  runApp(Pizza());
}

class Pizza extends StatefulWidget {
  const Pizza({Key? key}) : super(key: key);

  @override
  State<Pizza> createState() => _PizzaState();
}

class _PizzaState extends State<Pizza> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login(),
    );
  }
}
