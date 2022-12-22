import 'package:flutter/material.dart';
import 'dart:math';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController numberController = TextEditingController();
  String? hint = "RESULT";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://image.shutterstock.com/image-vector/vector-illustration-neon-future-game-260nw-1861318969.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Container(
                child: Text(
                  "NUMBER GUESSING GAME",
                  style: TextStyle(
                      fontSize: 64,
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 100),
                child: TextField(
                  controller: numberController,
                  decoration: InputDecoration(
                      labelText: "Enter your number",
                      hintText: "Enter number between 0 to 100",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                child: ElevatedButton(
                  child: Text("Send"),
                  onPressed: () {
                    String num = numberController.text;

                    print("---> num " + numberController.text);
                    number_guess(int.parse(num));
                    numberController.text = "";
                    print("----> clicked");
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Text(
                  hint!,
                  style: TextStyle(fontSize: 26),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void number_guess(int num) {
    int? computer;
    Random random = Random();
    computer = random.nextInt(101);
    String? msg;
    if (num > computer) {
      msg = "HINT : GUESS LOWER NUMBER";
    } else if (num < computer) {
      msg = "HINT : GUESS UPPER NUMBER";
    } else {
      msg = "YOU GOT IT";
    }
    setState(() {
      hint = msg;
    });
  }
}
