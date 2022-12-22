import 'package:flutter/material.dart';
import 'package:game_desion/design_game.dart';
import 'package:game_desion/start_game.dart';

main() {
  runApp(Game());
}

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Design(),
    );
  }
}
