import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Myphone extends StatefulWidget {
  const Myphone({super.key});
  static String verify = '';

  @override
  State<Myphone> createState() => _My_phoneState();
}

class _My_phoneState extends State<Myphone> {
  TextEditingController numbercontrolar = TextEditingController();
  TextEditingController countrycode = TextEditingController();
  var phone = '';

  @override
  void initState() {
    countrycode.text = "  +91";

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
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
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(14)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 40,
                      child: TextField(
                        controller: countrycode,
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '|',
                      style: TextStyle(fontSize: 33, color: Colors.grey),
                    ),
                    Expanded(
                      child: TextField(
                        controller: numbercontrolar,
                        keyboardType: TextInputType.phone,
                        onChanged: (Value) {
                          phone = Value;
                        },
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'Phone'),
                      ),
                    )
                  ],
                ),
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
                      await FirebaseAuth.instance.verifyPhoneNumber(
                        phoneNumber: '${countrycode.text + phone}',
                        verificationCompleted:
                            (PhoneAuthCredential credential) {},
                        verificationFailed: (FirebaseAuthException e) {},
                        codeSent: (String verificationId, int? resendToken) {
                          Myphone.verify = verificationId;
                          Navigator.pushNamed(context, 'otp');
                        },
                        codeAutoRetrievalTimeout: (String verificationId) {},
                      );
                    } catch (ex) {
                      print("Enter Number");
                    }
                  },
                  child: Text('Send the code'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green.shade600,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
