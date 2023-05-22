import 'package:flutter/material.dart';

class AlertDialogExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              'Write a code to display simple alert dialog with title, description andicon when button is clicked'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Dialog Title'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.info_outline,
                          size: 48,
                          color: Colors.blue,
                        ),
                        SizedBox(height: 16),
                        Text('Dialog Description'),
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Close'),
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
}

void main() {
  runApp(AlertDialogExample());
}
