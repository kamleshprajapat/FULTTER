import 'package:flutter/material.dart';

main() {
  runApp(NewApp());
}

class NewApp extends StatelessWidget {
  const NewApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Funney"),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  color: Colors.orange,
                  child: Column(
                    children: [
                      Icon(
                        Icons.directions_car,
                        size: 50,
                      ),
                      Text(
                        "car",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  color: Colors.orange,
                  child: Column(
                    children: [
                      Icon(
                        Icons.pedal_bike_sharp,
                        size: 50,
                      ),
                      Text(
                        "Bicycle",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  color: Colors.orange,
                  child: Column(
                    children: [
                      Icon(
                        Icons.directions_boat_rounded,
                        size: 50,
                      ),
                      Text(
                        "Boat",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  color: Colors.orange,
                  child: Column(
                    children: [
                      Icon(
                        Icons.directions_bus,
                        size: 50,
                      ),
                      Text(
                        "Bus",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  color: Colors.orange,
                  child: Column(
                    children: [
                      Icon(
                        Icons.train,
                        size: 50,
                      ),
                      Text(
                        "Train",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  color: Colors.orange,
                  child: Column(
                    children: [
                      Icon(
                        Icons.directions_walk,
                        size: 50,
                      ),
                      Text(
                        "Walk",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  color: Colors.orange,
                  child: Column(
                    children: [
                      Icon(
                        Icons.area_chart_sharp,
                        size: 50,
                      ),
                      Text(
                        "Arret",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  color: Colors.orange,
                  child: Column(
                    children: [
                      Icon(
                        Icons.email_outlined,
                        size: 50,
                      ),
                      Text(
                        "Brouillons",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
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
                  height: 100,
                  width: 100,
                  color: Colors.orange,
                  child: Column(
                    children: [
                      Icon(
                        Icons.dvr_rounded,
                        size: 50,
                      ),
                      Text(
                        "DVR",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  color: Colors.orange,
                  child: Column(
                    children: [
                      Icon(
                        Icons.copyright,
                        size: 50,
                      ),
                      Text(
                        "Copyright",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  color: Colors.orange,
                  child: Column(
                    children: [
                      Icon(
                        Icons.cloud_download,
                        size: 50,
                      ),
                      Text(
                        "Nuage",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  color: Colors.orange,
                  child: Column(
                    children: [
                      Icon(
                        Icons.alarm,
                        size: 50,
                      ),
                      Text(
                        "Alarm",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  color: Colors.orange,
                  child: Column(
                    children: [
                      Icon(
                        Icons.watch_later,
                        size: 50,
                      ),
                      Text(
                        "Watch",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  color: Colors.orange,
                  child: Column(
                    children: [
                      Icon(
                        Icons.verified,
                        size: 50,
                      ),
                      Text(
                        "Blue Tick",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  color: Colors.orange,
                  child: Column(
                    children: [
                      Icon(
                        Icons.abc,
                        size: 50,
                      ),
                      Text(
                        "ABC",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  color: Colors.orange,
                  child: Column(
                    children: [
                      Icon(
                        Icons.train,
                        size: 50,
                      ),
                      Text(
                        "Train",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
