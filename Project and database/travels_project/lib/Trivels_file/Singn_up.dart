import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travels_project/Trivels_file/Login_peg.dart';

class Singn_up extends StatefulWidget {
  const Singn_up({super.key});

  @override
  State<Singn_up> createState() => _Singn_upState();
}

class _Singn_upState extends State<Singn_up> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 230,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(90)),
                color: Color(0xffF5591f),
                gradient: LinearGradient(
                  colors: [
                    (Color.fromARGB(255, 234, 180, 160)),
                    Color.fromARGB(255, 41, 224, 206),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: ListView(
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 30),
                          child: Image.asset('Assets/image/07.png'),
                          height: 120,
                          width: 120,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20, left: 20),
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "Register",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 40,
              ),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)),
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                cursorColor: Color(0xffF5591f),
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: Color(0xffF5591f),
                    ),
                    hintText: 'Full name',
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 15,
              ),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)),
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                cursorColor: Color(0xffF5591f),
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.email,
                      color: Color(0xffF5591f),
                    ),
                    hintText: 'Enter Email',
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 15,
              ),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)),
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                cursorColor: Color(0xffF5591f),
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.phone,
                      color: Color(0xffF5591f),
                    ),
                    hintText: 'Mobile Number',
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 15,
              ),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)),
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                obscureText: true,
                cursorColor: Color(0xffF5591f),
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.vpn_key,
                      color: Color(0xffF5591f),
                    ),
                    hintText: 'Enter Password',
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none),
              ),
            ),
            GestureDetector(
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => Login()),
                  ),
                )
              },
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 50),
                padding: EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [(new Color(0xffF5591f)), (new Color(0xffF5591f))],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE),
                    ),
                  ],
                ),
                child: Text(
                  'Register',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
