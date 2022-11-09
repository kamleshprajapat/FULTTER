import 'package:flutter/material.dart';
import 'dart:io' show Platform, exit;
import 'package:flutter/services.dart';

main() {
  runApp(MostApp());
}

class MostApp extends StatelessWidget {
  const MostApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //  drawer: Drawer(),
        //appBar: AppBar(),
        body: Container(
          //  constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://media.istockphoto.com/vectors/abstract-blurred-colorful-background-vector-id1248542684?k=20&m=1248542684&s=612x612&w=0&h=1yKiRrtPhiqUJXS_yJDwMGVHVkYRk2pJX4PG3TT4ZYM="),
                fit: BoxFit.cover),
          ),
           margin: EdgeInsets.all(0),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(30),
                height: 450,
                width: 350,
                color: Color.fromARGB(228, 158, 158, 158),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: ("Type your Username"),
                          labelText: ("Username"),
                          prefixIcon: Icon(Icons.boy_outlined),
                          fillColor: Colors.grey,
                          labelStyle: TextStyle(
                              color: Color.fromARGB(255, 84, 47, 90),
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              fontSize: 20),
                          prefixIconColor: Colors.black,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.pink),
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: ("Password"),
                          labelText: ("Enter Password"),
                          prefixIcon: Icon(Icons.lock),
                          fillColor: Colors.grey,
                          labelStyle: TextStyle(
                              color: Color.fromARGB(255, 84, 47, 90),
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              fontSize: 20),
                          // prefixIconColor: Colors.black,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.pink),
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 100,
                          //  color: Colors.pink,
                          alignment: Alignment.center,
                          child: ElevatedButton(
                              child: Text("Login"), onPressed: () {}),
                        ),
                        Container(
                          child: TextButton(
                            onPressed: () {
                              AlertDialog alertDialog = AlertDialog(
                                title: Text("Exit"),
                                content: Text("Are You Want To Exit.."),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        if (Platform.isAndroid) {
                                          SystemNavigator.pop();
                                        } else if (Platform.isIOS) {
                                          exit(0);
                                        }
                                      },
                                      child: Text("Yes")),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text("No"))
                                ],
                              );

                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return alertDialog;
                                  });
                            },
                            child: Container(
                              color: Colors.blueAccent,
                              height: 30,
                              width: 70,
                              child: Center(
                                child: Text(
                                  "Exit..",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            onLongPress: () {},
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    void displayalert(BuildContext context) {
      AlertDialog alertDialog = AlertDialog(
        title: Text("Exit"),
        content: Text("Are You Want To Exit.."),
        actions: [
          TextButton(
              onPressed: () {
                if (Platform.isAndroid) {
                  SystemNavigator.pop();
                } else if (Platform.isIOS) {
                  exit(0);
                }
              },
              child: Text("Yes")),
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("No"))
        ],
      );

      showDialog(
          context: context,
          builder: (BuildContext context) {
            return alertDialog;
          });
    }
  }
}
