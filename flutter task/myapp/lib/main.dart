import 'package:flutter/material.dart';
import 'package:myapp/page.dart';

main() {
  runApp(Ninjay());
}

class Ninjay extends StatefulWidget {
  const Ninjay({Key? key}) : super(key: key);

  @override
  State<Ninjay> createState() => _NinjayState();
}

class _NinjayState extends State<Ninjay> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MostApp(),
    );
  }
}
