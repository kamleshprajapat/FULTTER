import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateSelectionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Date Selection'),
        ),
        body: Center(
          child: DateSelectionWidget(),
        ),
      ),
    );
  }
}

class DateSelectionWidget extends StatefulWidget {
  @override
  _DateSelectionWidgetState createState() => _DateSelectionWidgetState();
}

class _DateSelectionWidgetState extends State<DateSelectionWidget> {
  DateTime? selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            _selectDate(context);
          },
          child: Text('Select Date'),
        ),
        SizedBox(height: 16),
        Text(
          selectedDate != null
              ? DateFormat('yyyy-MM-dd').format(selectedDate!)
              : 'No date selected',
        ),
      ],
    );
  }
}
