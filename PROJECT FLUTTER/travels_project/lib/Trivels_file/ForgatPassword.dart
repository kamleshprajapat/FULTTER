import 'package:flutter/material.dart';
import 'package:travels_project/Trivels_file/Trivels_image.dart';
import 'Singn_up.dart';

class Forgat_pasword extends StatefulWidget {
  const Forgat_pasword({super.key});

  @override
  State<Forgat_pasword> createState() => _LoginState();
}

class _LoginState extends State<Forgat_pasword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 244, 251),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
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
                          margin: EdgeInsets.only(top: 50),
                          child: Image.asset('Assets/image/07.png'),
                          height: 120,
                          width: 120,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20, left: 20),
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "ForgatPasword",
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
              margin: EdgeInsets.only(top: 20, right: 20),
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                child: Text('Forget Password'),
                onTap: () => {},
              ),
            ),
            GestureDetector(
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => trivels()),
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
                  'Forgat Pasword',
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
