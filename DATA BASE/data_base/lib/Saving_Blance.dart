import 'package:data_base/add_screen2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Saving_blance extends StatefulWidget {
  const Saving_blance({super.key});

  @override
  State<Saving_blance> createState() => _Saving_blanceState();
}

class _Saving_blanceState extends State<Saving_blance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      body: Container(
        child: Row(
          children: [
            SizedBox(
              height: 70,
              width: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => MyaddUser())));
              },
              child: Icon(
                Icons.arrow_back,
                size: 30,
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
