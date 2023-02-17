import 'package:flutter/material.dart';
import 'package:travels_project/Trivels_file/History_story.dart/history/Alwar.dart';
import 'package:travels_project/Trivels_file/History_story.dart/history/Jodpur.dart';
import 'package:travels_project/Trivels_file/History_story.dart/history/Mount_abu.dart';
import 'package:travels_project/Trivels_file/History_story.dart/history/Udaipur.dart';
import 'package:travels_project/Trivels_file/History_story.dart/history/jaipur.dart';
import 'package:travels_project/Trivels_file/History_story.dart/history/jaisalmer.dart';

class Histry_Image extends StatefulWidget {
  const Histry_Image({super.key});

  @override
  State<Histry_Image> createState() => _Histry_ImageState();
}

class _Histry_ImageState extends State<Histry_Image> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 233, 244, 251),
        body: ListView(children: [
          Column(children: [
            SizedBox(
              height: 25,
            ),
            Card(
              color: Colors.blue[100],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 120,
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18), // Image border

                        child: SizedBox.fromSize(
                          child: Image.asset(
                            'Assets/image/13.jpg',
                            height: 100,
                            //width: 200,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => Jodpur()),
                            ),
                          );
                        },
                        child: Container(
                          child: Column(
                            children: [
                              ClipRRect(
                                child: Text(
                                  "JODPUR",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 26),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "History",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Column(children: [
              Card(
                color: Colors.blue[100],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 120,
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius:
                              BorderRadius.circular(18), // Image border

                          child: SizedBox.fromSize(
                            child: Image.asset(
                              'Assets/image/14.jpg',
                              height: 105,
                              //width: 200,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: ((context) => jaipur()),
                              ),
                            );
                          },
                          child: Container(
                            child: Column(
                              children: [
                                ClipRRect(
                                  child: Text(
                                    "JAIPUR",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 26),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "History",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Column(children: [
                Card(
                  color: Colors.blue[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 120,
                      padding: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.circular(18), // Image border

                            child: SizedBox.fromSize(
                              child: Image.asset(
                                'Assets/image/15.jpg',
                                height: 103,
                                //width: 200,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: ((context) => Udaipur()),
                                ),
                              );
                            },
                            child: Container(
                              child: Column(
                                children: [
                                  ClipRRect(
                                    child: Text(
                                      "UDAIPUR",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 26),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    " History",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    Card(
                      color: Colors.blue[100],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 120,
                          padding: EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(18), // Image border

                                child: SizedBox.fromSize(
                                  child: Image.asset(
                                    'Assets/image/39.jpg',
                                    height: 103,
                                    //width: 200,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: ((context) => Mount_abu()),
                                    ),
                                  );
                                },
                                child: Container(
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        child: Text(
                                          "MOUNT ABU",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 26),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "History",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Column(
                      children: [
                        Card(
                          color: Colors.blue[100],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 120,
                              padding: EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        18), // Image border

                                    child: SizedBox.fromSize(
                                      child: Image.asset(
                                        'Assets/image/49.jpg',
                                        height: 102,
                                        //width: 200,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: ((context) => jaisalmer()),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      child: Column(
                                        children: [
                                          ClipRRect(
                                            child: Text(
                                              "JAISALMER",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 26),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            " History",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Column(
                          children: [
                            Card(
                              color: Colors.blue[100],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 120,
                                  padding: EdgeInsets.only(left: 20),
                                  child: Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            18), // Image border

                                        child: SizedBox.fromSize(
                                          child: Image.asset(
                                            'Assets/image/61.jpg',
                                            height: 105,
                                            //width: 200,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: ((context) => Alwar()),
                                            ),
                                          );
                                        },
                                        child: Container(
                                          child: Column(
                                            children: [
                                              ClipRRect(
                                                child: Text(
                                                  "ALWAR",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 26),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "  History",
                                                style: TextStyle(fontSize: 20),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ])
            ])
          ])
        ]));
  }
}
