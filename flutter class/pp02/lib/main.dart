import 'package:flutter/material.dart';
import 'package:pp02/dd.dart';

main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Mytext(),
    );
  }
}
