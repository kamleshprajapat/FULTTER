import 'package:data_base/add_screen2.dart';
import 'package:data_base/transection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home_screen extends StatelessWidget {
  const Home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      body: Stack(
        children: [
          Positioned(
            top: 10,
            left: 5,
            right: 5,
            child: Column(
              children: [
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    //  borderRadius: BorderRadius.circular(17),
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/image/Budget-PNG.png",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    //  borderRadius: BorderRadius.circular(17),
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/image/Budget.png",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                ElevatedButton(
                  onPressed: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => NextScreeen())));
                  }),
                  child: Text(
                    "Start Application",
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.cyanAccent),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                Image.asset("assets/image/00.png")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
