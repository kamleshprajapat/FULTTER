import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pizzaproject/pizzafile/Homepage.dart';
import 'package:pizzaproject/pizzafile/pizza_firstpage.dart';

class pizzasecondpage extends StatelessWidget {
  const pizzasecondpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return HomePage();
            } else {
              return Pizzafile();
            }
          }),
    );
  }
}
