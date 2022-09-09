import 'package:flutter/material.dart';

main() {
  runApp(NewApp());
}

class NewApp extends StatelessWidget {
  const NewApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(30),
                  width: 658,
                  height: 70,
                  color: Colors.red,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30),
                  width: 200,
                  height: 70,
                  color: Colors.blue,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  width: 200,
                  height: 70,
                  color: Colors.yellow,
                ),
                SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  height: 70,
                  width: 200,
                  color: Colors.red,
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(30),
                  height: 70,
                  width: 658,
                  color: Colors.yellow,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30),
                  height: 70,
                  width: 658,
                  color: Colors.blue,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
