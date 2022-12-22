import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:game_desion/start_game.dart';

class Design extends StatefulWidget {
  const Design({super.key});

  @override
  State<Design> createState() => _DesignState();
}

class _DesignState extends State<Design> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://image.shutterstock.com/image-vector/vector-illustration-neon-future-game-260nw-1861318969.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        margin: EdgeInsets.all(0),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(80),
              child: Center(
                child: Text(
                  "NUMBER GUESSING GAME",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 50,
              width: 100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepOrangeAccent,
                  elevation: 3,

                  minimumSize: Size(20, 40), //////// HERE
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => MyApp()),
                    ),
                  );
                },
                child: Text('Start'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
