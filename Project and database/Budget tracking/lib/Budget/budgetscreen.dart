import 'package:flutter/material.dart';
import 'package:project3/Budget/budget.dart';

import 'package:project3/Budget/viewbudgethistory.dart';
import 'package:project3/screen1.dart';
import 'package:project3/startscreen.dart';
import 'package:sizer/sizer.dart';
import 'package:intl/intl.dart';
import 'dart:ui';

class Budget_Page extends StatefulWidget {
  const Budget_Page({super.key});

  @override
  State<Budget_Page> createState() => _Budget_PageState();
}

class _Budget_PageState extends State<Budget_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      body: Column(
        children: [
          Container(
            margin:
                EdgeInsets.only(top: 7.h, left: 1.w, right: 1.w, bottom: 8.h),
            width: 150.w,
            height: 10.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/bg.jpg',
                  ),
                  fit: BoxFit.cover),
            ),
            child: Stack(children: [
              Positioned(
                left: 25.w,
                right: 0.w,
                top: 1.5.h,
                bottom: 0.h,
                child: Text(
                  "MY BUDGET",
                  style: TextStyle(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w900,
                      color: Colors.blueAccent),
                ),
              ),
              Positioned(
                child: Image.asset(
                    'assets/images/Financial-Budget-Transparent-Background.png'),
              ),
            ]),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Budget(),
                  ));
            },
            child: Container(
              height: 10.h,
              width: 80.w,
              margin:
                  EdgeInsets.only(left: 4.w, right: 4.w, top: 4.h, bottom: 4.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/bg.jpg',
                    ),
                    fit: BoxFit.cover),
              ),
              child: Stack(children: [
                Positioned(
                    left: 3.w,
                    top: 2.h,
                    child: Icon(
                      Icons.add_box,
                      color: Colors.blueAccent,
                      size: 30.sp,
                    )),
                Positioned(
                  left: 17.w,
                  top: 2.h,
                  child: Text(
                    "ADD MONEY",
                    style: TextStyle(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent),
                  ),
                ),
              ]),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Budget_history(),
                  ));
            },
            child: Container(
              height: 10.h,
              width: 80.w,
              margin:
                  EdgeInsets.only(left: 4.w, right: 4.w, top: 4.h, bottom: 4.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/bg.jpg',
                    ),
                    fit: BoxFit.cover),
              ),
              child: Stack(children: [
                Positioned(
                    left: 3.w,
                    top: 2.h,
                    child: Icon(
                      Icons.history_edu,
                      color: Colors.blueAccent,
                      size: 30.sp,
                    )),
                Positioned(
                  left: 17.w,
                  top: 2.h,
                  child: Text(
                    " VIEW HISTORY",
                    style: TextStyle(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent),
                  ),
                ),
              ]),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Screen1(),
                  ));
            },
            child: Container(
              height: 7.h,
              width: 20.w,
              margin:
                  EdgeInsets.only(left: 7.w, right: 4.w, top: 4.h, bottom: 4.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Stack(children: [
                Positioned(
                  top: 2.h,
                  left: 7,
                  child: Text(
                    " BACK",
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent),
                  ),
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
