import 'package:data_base/Expence.dart';
import 'package:data_base/Saving_Blance.dart';
import 'package:data_base/main.dart';
import 'package:flutter/material.dart';

class MyaddUser extends StatelessWidget {
  const MyaddUser({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.cyan[100],
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15, top: 15),
            ),
            GestureDetector(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => Database()),
                  ),
                );
              }),
              child: Icon(
                Icons.arrow_back,
                size: 30,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: Image.asset(
            "assets/image/money-transfer-icon-40379.png",
            // fit: BoxFit.fill,
            height: 160,
            width: double.infinity,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        GestureDetector(
          onTap: (() {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) => Expence()),
              ),
            );
          }),
          child: Container(
            height: 70,
            width: 350,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              boxShadow: const [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    spreadRadius: 1,
                    offset: Offset(4, 4)),
              ],
              color: Colors.green[200],
            ),
            child: const Text(
              'MY EXPENSES ',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Container(
          height: 70,
          width: 350,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            boxShadow: const [
              BoxShadow(
                  color: Colors.blue,
                  blurRadius: 3,
                  spreadRadius: 5,
                  offset: Offset(0, 0)),
              BoxShadow(
                  color: Colors.red,
                  blurRadius: 5,
                  spreadRadius: 1,
                  offset: Offset(5, 5)),
            ],
            color: Colors.green[200],
          ),
          child: GestureDetector(
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => Saving_blance()),
                ),
              );
            }),
            child: const Text(
              'MY SAVING',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Container(
          height: 70,
          width: 350,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            boxShadow: const [
              BoxShadow(
                  color: Colors.deepPurpleAccent,
                  blurRadius: 10,
                  spreadRadius: 0,
                  offset: Offset(0, 0)),
            ],
            color: Colors.green[200],
          ),
          child: const Text(
            'MY BUDGET',
            style: TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
      ]),
    );
  }
}
