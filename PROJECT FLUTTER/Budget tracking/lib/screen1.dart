import 'package:flutter/material.dart';
import 'package:project3/Budget/budgetscreen.dart';
import 'package:project3/Expence/Expense_screen.dart';

import 'package:project3/Expence/expenses.dart';
import 'package:project3/models/Myexpense.dart';

import 'package:project3/services/MyServices.dart';
import 'package:project3/startscreen.dart';
import 'package:project3/Budget/viewbudgethistory.dart';
import 'package:project3/transaction.dart';
import 'package:sizer/sizer.dart';

import 'models/Mybudget.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  int addmoney = 0;
  List<MyBudget> _budgetHistoryList = <MyBudget>[];

  var _myservices = MyServices();

  void initState() {
    getHistrybudget();
    getHistryexpense();
    super.initState();
  }

  getHistrybudget() async {
    var result = await _myservices.historyGetAllBudget();

    _budgetHistoryList = <MyBudget>[];
    print("-------$result");
    result.forEach((entry) {
      setState(() {
        var _mybudget = MyBudget();

        _mybudget.id = entry['id'];
        _mybudget.month = entry['month'];
        _mybudget.created_at = entry['created_at'];
        _mybudget.amount = entry['amount'];

        _budgetHistoryList.add(_mybudget);
        addmoney += _mybudget.amount!;
        print("------addmoney---$entry----");
        print("------addmoney---$addmoney----");
      });
    });
  }

  List<MyExpense> _expenseHistoryList = <MyExpense>[];
  int expensemoney = 0;

  getHistryexpense() async {
    var result = await _myservices.historyGetAllExpense();

    _expenseHistoryList = <MyExpense>[];
    print("-------$result");
    result.forEach((entry) {
      setState(() {
        var _myexpense = MyExpense();

        _myexpense.id = entry['id'];

        _myexpense.amount = entry['amount'];
        _expenseHistoryList.add(_myexpense);
        expensemoney += _myexpense.amount!;
        print("------addmoney---$entry----");
        print("------addmoney---$expensemoney----");
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Scaffold(
          backgroundColor: Colors.cyan[100],
          body: Container(
            width: MediaQuery.of(context).size.width,
            child: Stack(children: [
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 58, 144, 193),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100),
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 13.h,
                  left: 21.w,
                  bottom: 0.h,
                  right: 0.w,
                  child: Text(
                    "YOUR BALANCE",
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  )),
              Positioned(
                right: 0.w,
                left: 0.w,
                top: 28.h,
                child: Image.asset(
                  "assets/images/money-transfer-icon-40379.png",
                  fit: BoxFit.cover,
                ),
              ),
              // Positioned(
              //   left: 33.5.w,
              //   right: 0.w,
              //   top: 30.h,
              //   height: MediaQuery.of(context).size.height * 0.3,
              //   child: Image.asset(
              //     'assets/images/piggy2.png',
              //     fit: BoxFit.cover,
              //   ),
              // ),
              Positioned(
                  top: 21.h,
                  left: 35.w,
                  bottom: 0.h,
                  right: 0.w,
                  child: Text(
                    "RS.${addmoney - expensemoney}",
                    style: TextStyle(
                        fontSize: 35,
                        color: Color.fromARGB(255, 228, 45, 45),
                        fontWeight: FontWeight.w700),
                  )),
              SafeArea(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 1.h, left: 2.w, right: 2.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 1.w, right: 70.w),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Home_screen(),
                                    ));
                              },
                              child: Text(
                                "< Back",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    color: Color.fromARGB(255, 233, 190, 127)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Expense_Screen(),
                            ));
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            right: 8.5.w, left: 8.5.w, top: 50.h),
                        width: 110.w,
                        height: 10.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/images/bg.jpg',
                              ),
                              fit: BoxFit.cover),
                        ),
                        child: Stack(children: [
                          Positioned(
                            left: 22.w,
                            right: 0.w,
                            top: 3.h,
                            bottom: 0.h,
                            child: Text(
                              "MY EXPENSES",
                              style: TextStyle(
                                  fontSize: 23.sp,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black),
                            ),
                          ),
                          Positioned(
                            child: Image.asset(
                              'assets/images/Expense-PNG-Transparent-Image.png',
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
                              builder: (context) => Budget_Page(),
                            ));
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            right: 8.5.w, left: 8.5.w, top: 5.h),
                        width: 110.w,
                        height: 10.h,
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
                            left: 25.w,
                            right: 0.w,
                            top: 3.h,
                            bottom: 0.h,
                            child: Text(
                              "MY BUDGET",
                              style: TextStyle(
                                  fontSize: 23.sp,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black),
                            ),
                          ),
                          Positioned(
                            child: Image.asset(
                                'assets/images/Financial-Budget-Transparent-Background.png'),
                          ),
                        ]),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Transaction(),
                            ));
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 8.h),
                        child: Text(
                          "Show ALL Transactions.",
                          style: TextStyle(
                              fontSize: 19.sp,
                              fontWeight: FontWeight.w900,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        );
      },
    );
  }
}
