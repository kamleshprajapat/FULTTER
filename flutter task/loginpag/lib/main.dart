import 'package:flutter/material.dart';

main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Snapchat",
            style: TextStyle(color: Colors.black, fontSize: 34),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              padding: EdgeInsets.only(right: 34),
              color: Colors.black,
              iconSize: 45,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: Colors.black,
                size: 45,
              ),
              padding: EdgeInsets.only(right: 34),
            ),
          ],
        ),
        drawer: Drawer(
          child: Text("moooo"),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(80),
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 34,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    labelText: "Enter Email....",
                    prefixIcon: Icon(
                      Icons.alternate_email_outlined,
                      size: 35,
                      color: Colors.black,
                    ),
                    fillColor: Color.fromARGB(255, 218, 208, 211),
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                    hintStyle: TextStyle(
                        color: Colors.lightGreen,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: ("Password...."),
                    labelText: ("Enter Password"),
                    prefixIcon: Icon(
                      Icons.lock,
                      size: 35,
                      color: Colors.black,
                    ),
                    fillColor: Colors.lightBlueAccent,
                    hintStyle: TextStyle(
                        color: Colors.lightGreenAccent,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: Text(""),
          icon: Icon(Icons.home),
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}

/*import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Insatgram"),
        ),
      ),
    );
  }
}*/
