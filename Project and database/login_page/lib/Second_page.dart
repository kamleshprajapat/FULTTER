import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Second_page extends StatefulWidget {
  const Second_page({super.key});

  @override
  State<Second_page> createState() => _Second_pageState();
}

class _Second_pageState extends State<Second_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
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
                                builder: ((context) => Second_page())));
                      }),
                      child: Text("Skip"),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(78),
                        ),
                        primary: Color.fromARGB(255, 151, 27, 218),
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        textStyle: TextStyle(
                            fontSize: 27, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                Image.asset("")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
