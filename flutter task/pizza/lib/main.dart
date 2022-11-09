import 'package:flutter/material.dart';

main() {
  runApp(Pizza());
}

class Pizza extends StatefulWidget {
  const Pizza({Key? key}) : super(key: key);

  @override
  State<Pizza> createState() => _PizzaState();
}

class _PizzaState extends State<Pizza> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
              child: TextField(
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  labelText: ("Cari reastoran"),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 30,
                  ),
                  labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                  enabledBorder: OutlineInputBorder(gapPadding: 199),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(Icons.location_on, color: Colors.orange, size: 30),
                Title(
                  color: Colors.black,
                  child: Text(
                    "JI.Balai Rakyat Cakung No.38.RT.7/RW.4 Cakun..",
                    style: TextStyle(
                        color: Color.fromARGB(255, 90, 85, 85), fontSize: 30),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      "Koleksi",
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Image.network(
                              "https://media.istockphoto.com/photos/cheesy-pepperoni-pizza-picture-id938742222?k=20&m=938742222&s=612x612&w=0&h=X5AlEERlt4h86X7U7vlGz3bDaDDGQl4C3MuU99u2ZwQ=",
                              width: 200,
                              height: 250),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 5,
                ),
                Image.network(
                  "https://media-cdn.tripadvisor.com/media/photo-s/1b/d5/66/7f/img-20200822-wa0029-largejpg.jpg",
                  height: 250,
                  width: 200,
                ),
                SizedBox(
                  width: 10,
                ),
                Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoA6k9AqJ9jvXw37U0cRdzoNtMvllGi4ZQTA&usqp=CAU",
                  height: 250,
                  width: 200,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  child: Column(
                    children: [
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoA6k9AqJ9jvXw37U0cRdzoNtMvllGi4ZQTA&usqp=CAU",
                        height: 200,
                        width: 600,
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
