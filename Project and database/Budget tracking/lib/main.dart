import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project3/Loginpage.dart';
import 'package:project3/fairbase/otp.dart';
import 'package:project3/fairbase/phone.dart';
import 'package:project3/startscreen.dart';
import 'package:sizer/sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'phone',
    routes: {'phone': (context) => Myphone(), 'otp': (context) => MyOtp()},
  ));
}
