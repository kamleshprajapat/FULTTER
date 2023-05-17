import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project3/Loginpage.dart';
import 'package:project3/fairbase/otp.dart';
import 'package:project3/fairbase/phone.dart';
import 'package:project3/screen1.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Screen1(),
    // initialRoute: 'phone',
    // routes: {'phone': (context) => const Myphone(), 'otp': (context) => const MyOtp()},
  ));
}
