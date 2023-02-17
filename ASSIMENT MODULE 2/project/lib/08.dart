//8. Write a program to show four images around Textview
import 'dart:collection';

import 'package:flutter/material.dart';

class eight extends StatefulWidget {
  const eight({super.key});

  @override
  State<eight> createState() => _eightState();
}

class _eightState extends State<eight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          height: 250,
          width: double.maxFinite,
          child: Row(children: [
            Container(
              child: Image.network(
                  "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=1.00xw:0.669xh;0,0.190xh&resize=1200:*"),
            ),
            Container(
              child: Image.network(
                  "https://media.istockphoto.com/id/1322123064/photo/portrait-of-an-adorable-white-cat-in-sunglasses-and-an-shirt-lies-on-a-fabric-hammock.jpg?s=612x612&w=0&k=20&c=-G6l2c4jNI0y4cenh-t3qxvIQzVCOqOYZNvrRA7ZU5o="),
            )
          ]),
        ),
        Container(
          height: 30,
          alignment: Alignment.center,
          child: Text(
            "IMAGES",
            style: TextStyle(fontSize: 30, color: Colors.orange),
          ),
        ),
        Container(
          height: 250,
          child: Row(children: [
            Container(
              child: Image.network(
                  "https://plus.unsplash.com/premium_photo-1661844541352-3b97b83f3edb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=405&q=80"),
            ),
            Container(
              child: Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/3/36/Funambulus_palmarum_%28Bengaluru%29.jpg"),
            ),
          ]),
        ),
      ]),
    );
  }
}
