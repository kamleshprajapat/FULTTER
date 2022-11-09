import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? msg = "";
  TextEditingController? mynamecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          leading: Icon(
            Icons.snapchat_outlined,
            color: Colors.black,
            size: 50,
          ),
          title: Center(
            child: Text(
              "SnapChat",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        backgroundColor: Colors.yellow,
        body: Container(
          margin: EdgeInsets.all(30),
          padding: EdgeInsets.all(30),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Container(
                  child: Text(
                    "LogIn..",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter your Name ",
                      labelText: " User Name",
                      prefixIcon: Icon(Icons.man_rounded),
                      fillColor: Colors.purple,
                      labelStyle: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 30,
                      ),
                      hintStyle: TextStyle(
                          color: Colors.pink,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                      prefixIconColor: Colors.black,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.pink,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password ",
                      labelText: " Enter Password..",
                      prefixIcon: Icon(Icons.lock),
                      fillColor: Colors.purple,
                      labelStyle: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 30,
                      ),
                      hintStyle: TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                      prefixIconColor: Colors.black,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.pink,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(35),
                      height: 50,
                      width: 100,
                      color: Colors.black,
                      alignment: Alignment.center,
                      child: ElevatedButton(
                          child: Text("Login.."),
                          onPressed: () {
                            displayMessage();
                          }),
                    ),
                    Container(
                        margin: EdgeInsets.all(20),
                        padding: EdgeInsets.all(20),
                        child: Text(msg!))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void displayMessage() {
    msg = mynamecontroller!.text.toString();
    print("--------msg &msg");
  }
}
