import 'dart:async';

import 'package:flutter/material.dart';
import 'package:game_image/Game_Over.dart';

class Tene extends StatefulWidget {
  const Tene({super.key});

  @override
  State<Tene> createState() => _GameState();
}

class _GameState extends State<Tene> {
  bool isLogoVisible = true;
  TextEditingController myedit = TextEditingController();
  var tru = 0;
  var fls = 0;
  var totle = 0;
  String? result = "Ans";

  @override
  void initState() {
    Future.delayed(
        Duration(
          seconds: 3,
        ), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => game_Over(),
          ));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 164, 201, 231),
      // appBar: AppBar(title: Text("GAME")),
      body: Center(
        child: Column(children: [
          SizedBox(
            height: 40,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 5,
            child: Visibility(
              visible: isLogoVisible,
              child: Image.network(
                "https://c8.alamy.com/comp/2AYFCH2/clock-tower-of-jodhpur-rajasthan-india-2AYFCH2.jpg",
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: ElevatedButton(
                  child: Text("JAIPUR"),
                  onPressed: () {
                    tru = 10;
                    totle = (tru + totle);
                    setState(() {
                      result = "Wrong";
                    });
                    myedit.text = "";
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: ElevatedButton(
                  child: Text("JODPUR"),
                  onPressed: () {
                    fls = -10;
                    totle = (fls + totle);
                    setState(() {
                      result = "Right";
                    });
                    myedit.text = "";
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Container(
                    child: ElevatedButton(
                      child: Text("UDAIPUR"),
                      onPressed: () {
                        fls = -10;
                        totle = (fls + totle);
                        setState(() {
                          result = "Wrong";
                        });
                        myedit.text = "";
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: ElevatedButton(
                  child: Text("BIKANER"),
                  onPressed: () {
                    fls = -10;
                    totle = (fls + totle);
                    setState(() {
                      result = "Wrong";
                    });
                    myedit.text = "";
                  },
                ),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                result.toString(),
                style: TextStyle(color: Colors.red, fontSize: 38),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }
}
