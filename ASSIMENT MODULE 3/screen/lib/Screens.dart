import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class List_Flutter extends StatefulWidget {
  const List_Flutter({super.key});

  @override
  State<List_Flutter> createState() => _List_FlutterState();
}

class _List_FlutterState extends State<List_Flutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            children: [
              Container(
                child: InkWell(
                  onTap: () {},
                  child: Center(
                    child: Text(
                      "Listview",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
                height: 120,
                width: double.infinity,
                color: Colors.red,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.blue,
                      height: 120,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.blue,
                      height: 120,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.yellow,
                      height: 120,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.yellow,
                      height: 120,
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.yellow,
                      height: 120,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.yellow,
                      height: 120,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.yellow,
                      height: 120,
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.yellow,
                      height: 120,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Image.asset("images/01.jpg"),
                width: double.maxFinite,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Oeschinen Lake Campground",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Text(
                      "Kandersteg,Swizeriand",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.call,
                        size: 50,
                        color: Colors.blue,
                      ),
                      Text(
                        "Call",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "images/Route.png",
                        height: 50,
                        color: Colors.blue,
                      ),
                      Text(
                        "ROUTE",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.share,
                        size: 50,
                        color: Colors.blue,
                      ),
                      Text(
                        "SHARE",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                child: Text(
                  "Lake Oeschiner lies at the food of the Buemlisalp in the Bemese Alps, Situated 1,578 metres above sea level, it is one of the larger Alpine Lakes, A gondols ride from Kandersteg Followed by a half-hour walk lake, which warims to 20 degrees Celsius  in the summer. Activities emjoyed here include rowing, and riding the summer toboggan run",
                  style: TextStyle(fontSize: 30),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
