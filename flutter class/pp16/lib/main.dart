import 'dart:convert';
import 'dart:html';

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
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.blue,
                      size: 50,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.blue,
                      size: 50,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.blue,
                      size: 50,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.message,
                      color: Color.fromARGB(255, 66, 31, 180),
                      size: 50,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.message_outlined,
                      color: Color.fromARGB(255, 66, 31, 180),
                      size: 50,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.message,
                      color: Color.fromARGB(255, 66, 31, 180),
                      size: 50,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.masks,
                      color: Color.fromARGB(255, 66, 31, 180),
                      size: 50,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.masks_outlined,
                      color: Color.fromARGB(255, 66, 31, 180),
                      size: 50,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.masks,
                      color: Color.fromARGB(255, 91, 16, 128),
                      size: 50,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.wash,
                      color: Color.fromARGB(255, 181, 25, 195),
                      size: 50,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.wash_outlined,
                      color: Color.fromARGB(255, 181, 25, 195),
                      size: 50,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.wash,
                      color: Color.fromARGB(255, 181, 25, 195),
                      size: 50,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 30,
                    width: 900,
                    color: Color.fromARGB(137, 180, 144, 221),
                    alignment: Alignment.center,
                    child: Text(
                      "    flilled Outlined Rounded Sharp",
                      style: TextStyle(wordSpacing: 20),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
