import 'package:data_base/add_screen2.dart';
import 'package:data_base/home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NextScreeen extends StatelessWidget {
  String? name, money;
  NextScreeen({this.name, this.money});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      body: Center(
        child: SafeArea(
            child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                ),
                GestureDetector(
                  onTap: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => MyaddUser())));
                  }),
                  child: Icon(
                    Icons.arrow_back,
                    size: 30,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Center(
                child: Text(
              " TRANSECTION",
              style: TextStyle(fontSize: 55),
            )),
            SizedBox(
              height: 30,
            ),
            Text(
              "Name :" + money.toString(),
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Amount :" + name.toString(),
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MyaddUser(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
