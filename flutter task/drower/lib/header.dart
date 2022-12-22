import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.maxFinite,
      color: Colors.deepPurple,
      child: Container(
        margin: EdgeInsets.only(bottom: 30, left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.person,
              color: Colors.white,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Kamlesh kumar",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              "Kamlesh13062000@gmail.com",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
