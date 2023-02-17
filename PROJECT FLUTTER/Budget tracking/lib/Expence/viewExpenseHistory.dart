import 'package:flutter/material.dart';
import 'package:project3/models/Mybudget.dart';
import 'package:project3/models/Myexpense.dart';
import 'package:project3/services/MyServices.dart';

class Expense_History extends StatefulWidget {
  const Expense_History({super.key});

  @override
  State<Expense_History> createState() => _Expense_HistoryState();
}

class _Expense_HistoryState extends State<Expense_History> {
  List<MyExpense> _expenseHistoryList = <MyExpense>[];

  var _myservices = MyServices();

  void initState() {
    getHistryexpense();
    super.initState();
  }

  getHistryexpense() async {
    var result = await _myservices.historyGetAllExpense();

    _expenseHistoryList = <MyExpense>[];
    print("-------$result");
    result.forEach((entry) {
      setState(() {
        var _myexpense = MyExpense();

        _myexpense.id = entry['id'];
        _myexpense.month = entry['month'];
        _myexpense.title = entry['title'];
        _myexpense.created_at = entry['created_at'];
        _myexpense.amount = entry['amount'];
        _expenseHistoryList.add(_myexpense);
      });
    });
  }

  _deleteExpenseEntry(BuildContext context, id) {
    return showDialog(
        context: context,
        builder: (param) {
          return AlertDialog(
            title: Text("Are You Sure You Want To Delete Yhis ??"),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () async {
                        print(id);
                        var result =
                            await _myservices.deleteDataExpenseService(id);
                        print("entry deleted !!!");
                        getHistryexpense();
                        Navigator.pop(context);
                      },
                      child: Text("yes")),
                  ElevatedButton(
                      onPressed: () {
                        print("No button press");
                        Navigator.pop(context);
                      },
                      child: Text("no")),
                ],
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        backgroundColor: Color(0xff010A43),
        title: Text("Expense"),
      ),
      body: ListView.builder(
          itemCount: _expenseHistoryList.length,
          itemBuilder: ((context, index) {
            return Card(
              child: ListTile(
                tileColor: Color.fromARGB(173, 39, 106, 161),
                onTap: () {},
                leading: Icon(
                  Icons.currency_rupee,
                  color: Colors.red,
                ),
                title: Text(
                  _expenseHistoryList[index].amount.toString(),
                  style: TextStyle(fontSize: 20, color: Colors.amber),
                ),
                subtitle: Text(_expenseHistoryList[index].title ?? ""),
                trailing: Column(
                  children: [
                    Text(_expenseHistoryList[index].month ?? ""),
                    Text(_expenseHistoryList[index].created_at.toString()),
                  ],
                ),
                onLongPress: () {
                  _deleteExpenseEntry(context, _expenseHistoryList[index].id);
                },
              ),
            );
          })),
    );
  }
}
