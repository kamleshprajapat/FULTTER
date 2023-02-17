import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_expamle/homepage.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Homepage(),
      );
    });
  }
}
