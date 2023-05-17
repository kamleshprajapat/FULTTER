import 'package:flutter/material.dart';
import 'package:project3/models/Mybudget.dart';
import 'package:project3/models/Mysaving.dart';
import 'package:project3/services/MyServices.dart';
import 'package:project3/Budget/viewbudgethistory.dart';
import 'package:sizer/sizer.dart';
import 'package:intl/intl.dart';

class Budget extends StatefulWidget {
  const Budget({super.key});

  @override
  State<Budget> createState() => _BudgetState();
}

class _BudgetState extends State<Budget> {
  var monthController = TextEditingController();
  var amountController = TextEditingController();
  var monthValidator = false;
  var amountValidator = false;
  var formattedDate;
  var myservices = MyServices();

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
                    borderRadius: BorderRadius.circular(14),
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/bg.jpg',
                        ),
                        fit: BoxFit.cover),
                  ),
                  child: Stack(children: [
                    Positioned(
                      left: 26.w,
                      right: 1.w,
                      top: 1.9.h,
                      bottom: 3.h,
                      child: Text(
                        "MY BUDGET",
                        style: TextStyle(
                            fontSize: 30.sp,
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
                Container(
                  height: 12.h,
                  width: 120.w,
                  margin: EdgeInsets.only(top: 5.h, bottom: 1.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
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
                        controller: monthController,
                        style: TextStyle(color: Colors.black, fontSize: 25),
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.calendar_month_outlined,
                            size: 39,
                            color: Colors.black,
                          ),
                          labelText: "Month",
                          hintText: "Enter Month",
                          errorText:
                              monthValidator ? "Field must be required " : null,
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
                    borderRadius: BorderRadius.circular(20),
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
                        controller: amountController,
                        style: TextStyle(color: Colors.black, fontSize: 25),
                        decoration: InputDecoration(
                          fillColor: Colors.amber,
                          icon: Icon(
                            Icons.currency_rupee_sharp,
                            size: 39,
                            color: Colors.black,
                          ),
                          labelText: "Amount",
                          errorText: amountValidator
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
                      monthController.text.isEmpty
                          ? monthValidator = true
                          : monthValidator = false;

                      amountController.text.isEmpty
                          ? amountValidator = true
                          : amountValidator = false;
                    });
                    if (monthValidator == false && amountValidator == false) {
                      var mybudget = MyBudget();
                      mybudget.month = monthController.text;

                      mybudget.amount = int.parse(amountController.text);

                      var now = new DateTime.now();
                      var formatter = new DateFormat("dd-MM-yyyy \nhh:mm:ss");
                      formattedDate = formatter.format(now);
                      print(formattedDate);
                      mybudget.created_at = formattedDate;
                      var result =
                          await myservices.insertBudgetService(mybudget);

                      var mytransaction = MyTransaction();
                      mytransaction.title = monthController.text;
                      mytransaction.type = "Income";

                      mytransaction.amount = int.parse(amountController.text);

                      var resulttrans = await myservices
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