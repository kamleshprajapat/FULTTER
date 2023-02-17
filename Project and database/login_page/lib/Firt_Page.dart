import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login_page/Second_page.dart';

class First_Page extends StatefulWidget {
  const First_Page({super.key});

  @override
  State<First_Page> createState() => _First_PageState();
}

class _First_PageState extends State<First_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 30, right: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => First_Page())));
                    }),
                    child: Text("Skip"),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(78),
                      ),
                      primary: Color.fromARGB(255, 151, 27, 218),
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      textStyle:
                          TextStyle(fontSize: 27, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                "assets/image/01.png",
                height: 300,
              ),
              Text(
                "  Manage Your Task",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "   With This Small App You Can Orgnize \n    All Your Tasks and  Duties In a One \n                           Single App.",
                style: TextStyle(
                    fontSize: 22, color: Color.fromARGB(227, 158, 158, 158)),
              ),
              SizedBox(
                height: 13,
              ),
              IconButton(
                onPressed: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Second_page())));
                }),
                iconSize: 80,
                icon: Icon(
                  Icons.arrow_circle_right_sharp,
                  color: Color.fromARGB(255, 240, 166, 190),
                ),
              ),
              Image.asset(
                "assets/image/pngwing.com.png",
                // fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
