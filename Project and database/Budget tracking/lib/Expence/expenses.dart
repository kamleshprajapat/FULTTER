import 'package:flutter/material.dart';

import 'package:project3/Expence/addexpensepage.dart';
import 'package:project3/models/Myexpense.dart';
import 'package:project3/models/Mysaving.dart';
import 'package:project3/services/MyServices.dart';
import 'package:sizer/sizer.dart';
import 'package:intl/intl.dart';
import 'dart:ui';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  var titleController = TextEditingController();
  var _monthController = TextEditingController();
  var _amountController = TextEditingController();
  var titleValidator = false;
  var _monthValidator = false;
  var _amountValidator = false;

  var formattedDate;

  var _myservices = MyServices();

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        backgroundColor: Colors.cyan[100],
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 1.h),
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
                      left: 23.w,
                      right: 0.w,
                      top: 1.5.h,
                      bottom: 0.h,
                      child: Text(
                        "MY EXPENSES",
                        style: TextStyle(
                            fontSize: 30.sp,
                            fontWeight: FontWeight.w900,
                            color: Colors.black),
                      ),
                    ),
                    Positioned(
                      child: Image.asset(
                          'assets/images/Expense-PNG-Transparent-Image.png'),
                    ),
                  ]),
                ),
                Container(
                  height: 12.h,
                  width: 120.w,
                  margin: EdgeInsets.only(top: 5.h, bottom: 1.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/bg.jpg',
                        ),
                        fit: BoxFit.cover),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 4.w, right: 1.w),
                    child: SizedBox(
                      height: 12.h,
                      child: TextFormField(
                        controller: titleController,
                        style: TextStyle(color: Colors.black, fontSize: 25),
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.person,
                            size: 39,
                            color: Colors.black,
                          ),
                          labelText: "Expense",
                          errorText: _amountValidator
                              ? "Field must be required "
                              : null,
                          hintText: "Enter Your Expense",
                          hintStyle:
                              TextStyle(color: Colors.black, fontSize: 30),
                          labelStyle:
                              TextStyle(color: Colors.black, fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 12.h,
                  width: 120.w,
                  margin: EdgeInsets.only(top: 5.h, bottom: 1.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/bg.jpg',
                        ),
                        fit: BoxFit.cover),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 4.w, right: 1.w),
                    child: SizedBox(
                      height: 12.h,
                      child: TextFormField(
                        controller: _monthController,
                        style: TextStyle(color: Colors.black, fontSize: 25),
                        decoration: InputDecoration(
                          fillColor: Colors.amber,
                          icon: Icon(
                            Icons.calendar_month,
                            size: 39,
                            color: Colors.black,
                          ),
                          labelText: "Month",
                          errorText: _amountValidator
                              ? "Field must be required "
                              : null,
                          hintText: "Enter Your Month",
                          hintStyle:
                              TextStyle(color: Colors.black, fontSize: 30),
                          labelStyle:
                              TextStyle(color: Colors.black, fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 12.h,
                  width: 120.w,
                  margin: EdgeInsets.only(top: 5.h, bottom: 5.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/bg.jpg',
                        ),
                        fit: BoxFit.cover),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 4.w, right: 1.w),
                    child: SizedBox(
                      height: 12.h,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: _amountController,
                        style: TextStyle(color: Colors.black, fontSize: 25),
                        decoration: InputDecoration(
                          fillColor: Colors.amber,
                          icon: Icon(
                            Icons.currency_rupee_sharp,
                            size: 39,
                            color: Colors.black,
                          ),
                          labelText: "Amount",
                          errorText: _amountValidator
                              ? "Field must be required "
                              : null,
                          hintText: "Enter Your Amount",
                          hintStyle:
                              TextStyle(color: Colors.black, fontSize: 30),
                          labelStyle:
                              TextStyle(color: Colors.black, fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () async {
                    setState(() {
                      titleController.text.isEmpty
                          ? titleValidator = true
                          : titleValidator = false;

                      _monthController.text.isEmpty
                          ? _monthValidator = true
                          : _monthValidator = false;

                      _amountController.text.isEmpty
                          ? _amountValidator = true
                          : _amountValidator = false;
                    });
                    if (titleValidator == false &&
                        _monthValidator == false &&
                        _amountValidator == false) {
                      var myexpense = MyExpense();
                      myexpense.month = _monthController.text;
                      myexpense.title = titleController.text;

                      myexpense.amount = int.parse(_amountController.text);

                      var now = new DateTime.now();
                      var formatter = new DateFormat("dd-MM-yyyy \nhh:mm:ss");
                      formattedDate = formatter.format(now);
                      print(formattedDate);
                      myexpense.created_at = formattedDate;
                      var result =
                          await _myservices.insertExpenseService(myexpense);
                      var mytransaction = MyTransaction();
                      mytransaction.title = _monthController.text;
                      mytransaction.type = "Expense";

                      mytransaction.amount = int.parse(_amountController.text);

                      var resulttrans = await _myservices
                          .insertTransactionService(mytransaction);

                      // Fluttertoast.showToast(msg: 'Submitted',
                      // toastLength: Toast.LENGTH_SHORT,
                      // gravity: ToastGravity.BOTTOM,
                      // timeInSecForIosWeb: 2,
                      // textColor: Colors.white,
                      // backgroundColor: Colors.green,
                      // );

                      Navigator.pop(context);
                    }
                  },
                  child: Text("Save"),
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 246, 32, 39),
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                      textStyle:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
