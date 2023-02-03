import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:pinput/pinput.dart';
import 'package:project3/fairbase/phone.dart';
import 'package:project3/startscreen.dart';

class MyOtp extends StatefulWidget {
  const MyOtp({super.key});

  @override
  State<MyOtp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyOtp> {
  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );

    var code = "";
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/pngwing.com.png',
                height: 200,
                width: 200,
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                'Phone verification',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'We Need to register your phone before getting started !',
                style: const TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Pinput(
                length: 6,
                showCursor: true,
                onChanged: ((value) {
                  code = value;
                }),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    try {
                      PhoneAuthCredential credential =
                          PhoneAuthProvider.credential(
                              verificationId: Myphone.verify, smsCode: code);

                      // Sign the user in (or link) with the credential
                      await auth.signInWithCredential(credential);

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => Home_screen())),
                      );
                      // Navigator.pushNamedAndRemoveUntil(
                      //     context, "Home_screen", (route) => false);
                    } catch (e) {}

                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: ((context) => Home_screen())));
                  },
                  child: Text('Verify Phone Number'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green.shade600,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13))),
                ),
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, 'phone', (route) => false);
                    },
                    child: Text(
                      'Edit Phone Number...?',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
