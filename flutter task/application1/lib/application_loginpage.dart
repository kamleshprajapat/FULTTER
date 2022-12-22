import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Application_loginpage extends StatefulWidget {
  const Application_loginpage({Key? key}) : super(key: key);

  @override
  State<Application_loginpage> createState() => _Application_loginpageState();
}

class _Application_loginpageState extends State<Application_loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: CircleAvatar(
              backgroundColor: Color(0xffE6E6E6),
              radius: 40,
              child: Icon(
                Icons.person,
                color: Colors.black,
                size: 40,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Login Page",
            style: TextStyle(color: Colors.black, fontSize: 45),
          ),
          Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 400),
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(77),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(70),
                        borderSide: BorderSide(color: Colors.pink),
                      ),
                      hintText: ("Enter your Username "),
                      label: const Center(
                        child: Text("Username"),
                      )),
                ),
              ),
              SizedBox(
                height: 17,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 400),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(77),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(70),
                        borderSide: BorderSide(color: Colors.pink),
                      ),
                      hintText: ("Enter your Password "),
                      label: const Center(
                        child: Text("Password"),
                      )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 370),
                child: Text(
                  "FORGOT YOUR PASSWORD?",
                  style: TextStyle(
                      fontSize: 12, color: Color.fromARGB(255, 164, 148, 148)),
                ),
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          ElevatedButton(
            onPressed: (() {}),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "LOGIN",
                style: TextStyle(fontSize: 34),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
