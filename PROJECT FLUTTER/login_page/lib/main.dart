import 'package:flutter/material.dart';
import 'package:login_page/Firt_Page.dart';

main() {
  runApp(app());
}

class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: First_Page(),
    );
  }
}
