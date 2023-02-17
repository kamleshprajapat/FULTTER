import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:game_image/game.dart';

class game_Quiz extends StatefulWidget {
  const game_Quiz({super.key});

  @override
  State<game_Quiz> createState() => _DesignState();
}

class _DesignState extends State<game_Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
        decoration: BoxDecoration(
          image: DecorationImage(
            image:
                NetworkImage("https://blog.hubspot.com/hubfs/google-quiz.jpg"),
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
                  "QUIZE GAME",
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
                      builder: ((context) => Game()),
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
