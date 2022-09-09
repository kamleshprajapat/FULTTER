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
        appBar: AppBar(
          title: Text(""),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.values.first,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  height: 80,
                  width: 800,
                  color: Colors.blue,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 50,
                  width: 50,
                  color: Color.fromARGB(255, 163, 58, 175),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 50,
                  width: 50,
                  color: Color.fromARGB(255, 230, 64, 119),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 50,
                  width: 50,
                  color: Colors.yellow,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 50,
                  width: 50,
                  color: Color.fromARGB(255, 142, 65, 210),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 50,
                  width: 50,
                  color: Colors.pink,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  height: 50,
                  width: 50,
                  color: Colors.yellow,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  width: 50,
                  height: 50,
                  color: Color.fromARGB(255, 131, 7, 255),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 50,
                  width: 50,
                  color: Colors.pink,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 50,
                  height: 50,
                  color: Colors.yellow,
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
