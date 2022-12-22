import 'dart:html';

import 'package:flutter/material.dart';
import 'package:pizzaproject/pizzafile/Homepage.dart';

import 'package:pizzaproject/pizzafile/pizza_firstpage.dart';
import 'package:pizzaproject/pizzafile/pizza_secondpage.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const Pizza());
}

class Pizza extends StatelessWidget {
  const Pizza({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
