import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AlertDialogExample_03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text(
                "Write a code to display alert dialog with positive, negative and neutral button and display toast respectively user's choice")),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Dialog Title'),
                    content: Text('Dialog Description'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          showToast('Positive Button Pressed');
                        },
                        child: Text('Positive'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          showToast('Negative Button Pressed');
                        },
                        child: Text('Negative'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          showToast('Neutral Button Pressed');
                        },
                        child: Text('Neutral'),
                      ),
                    ],
                  );
                },
              );
            },
            child: Text('Show Dialog'),
          ),
        ),
      ),
    );
  }

  void showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.black54,
      textColor: Colors.white,
    );
  }
}
