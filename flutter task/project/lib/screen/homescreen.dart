import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'iosscreen.dart';
import 'miscreen.dart';
import 'androidscreen.dart';
import 'flutterscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => flutterScreen()));
            },
            child: Container(
              height: 200,
              margin: EdgeInsets.all(20),
              child: Center(
                  child: Text(
                "FLUTTER",
                style: TextStyle(color: Colors.white, fontSize: 36),
              )),
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
          Container(
            height: 200,
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AndroidScreen()));
                  },
                  child: Container(
                    height: 200,
                    width: 200,
                    child: Center(
                        child: Text(
                      "ANDROID",
                      style: TextStyle(color: Colors.white, fontSize: 36),
                    )),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                Container(
                  height: 200,
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => iosscreen()));
                        },
                        child: Container(
                          height: 200,
                          width: 200,
                          child: Center(
                              child: Text(
                            "IOS",
                            style: TextStyle(color: Colors.white, fontSize: 36),
                          )),
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      Container(
                        height: 200,
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Miscreen()));
                              },
                              child: Container(
                                height: 200,
                                width: 200,
                                child: Center(
                                    child: Text(
                                  "MI",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 36),
                                )),
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
