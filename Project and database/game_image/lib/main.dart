import 'package:flutter/material.dart';
import 'package:game_image/game_start.dart';

main() {
  runApp(Game_start());
}

class Game_start extends StatefulWidget {
  const Game_start({super.key});

  @override
  State<Game_start> createState() => _Game_startState();
}

class _Game_startState extends State<Game_start> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: game_Quiz(),
    );
  }
}
