import 'package:flutter/material.dart';

enum Technology { Pythan, java, androad }

class Redio extends StatefulWidget {
  const Redio({Key? key}) : super(key: key);

  @override
  State<Redio> createState() => _RedioState();
}

class _RedioState extends State<Redio> {
  Technology tech = Technology.Pythan;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            ListTile(
              title: Text("Pythan Programing"),
              leading: Radio(
                value: Technology.Pythan,
                groupValue: tech,
                onChanged: (Technology? value) {
                  setState(() {
                    tech = value!;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
