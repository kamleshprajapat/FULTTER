import 'dart:io' show Platform, exit;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Alertpage extends StatelessWidget {
  const Alertpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test"),
      ),
      body: Container(
        child: Center(
          child: TextButton(
            onPressed: () {
              displayalert(context);
            },
            child: Text("Click here"),
          ),
        ),
      ),
    );
  }

  void displayalert(BuildContext context) {
    AlertDialog alertDialog = AlertDialog(
      title: Text("Alert"),
      content: Text("Are you sure you want to close this"),
      actions: [
        TextButton(
          onPressed: () {
            if (Platform.isAndroid) {
              SystemNavigator.pop();
            } else if (Platform.isIOS) {
              exit(0);
            }
          },
          child: Text("yes"),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("no"),
        ),
      ],
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}
