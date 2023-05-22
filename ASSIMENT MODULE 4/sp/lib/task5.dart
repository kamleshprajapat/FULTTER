import 'package:flutter/material.dart';

void main() {
  runApp(My_appNew());
}

class My_appNew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: CloseSpecificDialog(),
        ),
      ),
    );
  }
}

class CloseSpecificDialog extends StatefulWidget {
  @override
  _CloseSpecificDialogState createState() => _CloseSpecificDialogState();
}

class _CloseSpecificDialogState extends State<CloseSpecificDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: InkWell(
        child: Text('Close_app'),
        onTap: () async {
          showDialogBelow();
          showDialogAbove();
          await Future.delayed(Duration(seconds: 5));
          closeDialogBelowNotAbove();
        },
      )),
    );
  }

  void showDialogBelow() {
    showDialog(
        context: context,
        builder: (BuildContext contextPopup) {
          return AlertDialog(
            content: Container(
              width: 350.0,
              height: 150.0,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircularProgressIndicator(),
                    Text('I am below (you should not see this after 5 sec)'),
                  ],
                ),
              ),
            ),
          );
        });
  }

  void showDialogAbove() {
    showDialog(
        context: context,
        builder: (BuildContext contextPopup) {
          return AlertDialog(
            content: Container(
              height: 100.0,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircularProgressIndicator(),
                    Text('I am above (this should not close)'),
                  ],
                ),
              ),
            ),
          );
        });
  }

  /// This should close the dialog below not the one above
  void closeDialogBelowNotAbove() {
    Navigator.of(context).pop();
  }
}
