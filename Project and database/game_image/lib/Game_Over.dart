import 'package:flutter/material.dart';
import 'package:game_image/02.dart';

import 'package:game_image/game.dart';

class game_Over extends StatefulWidget {
  const game_Over({super.key});

  @override
  State<game_Over> createState() => _DesignState();
}

class _DesignState extends State<game_Over> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "data:image/jpeg;base64,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"),
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
                  "",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
            SizedBox(
              height: 300,
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
                      builder: ((context) => Game()),
                    ),
                  );
                },
                child: Text('Exit'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
