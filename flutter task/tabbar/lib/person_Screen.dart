import 'package:flutter/material.dart';

class Person extends StatefulWidget {
  const Person({super.key});

  @override
  State<Person> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Person> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Person_Screen",
          style: TextStyle(fontSize: 36),
        ),
      ),
    );
  }
}
