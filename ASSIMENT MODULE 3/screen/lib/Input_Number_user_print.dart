import 'dart:math';

import 'package:flutter/material.dart';

class ReverseNumberScreen extends StatefulWidget {
  @override
  _ReverseNumberScreenState createState() => _ReverseNumberScreenState();
}

class _ReverseNumberScreenState extends State<ReverseNumberScreen> {
  double redValue = 0;
  double greenValue = 0;
  double blueValue = 0;

  void updateBackgroundColor() {
    setState(() {});
  }

  bool _isChecked = false;
  Color? selectedColor;
  double _fontSize = 20.0;

  void increaseFontSize() {
    setState(() {
      _fontSize += 2.0;
    });
  }

  void decreaseFontSize() {
    setState(() {
      _fontSize -= 2.0;
    });
  }

  Color _backgroundColor = Colors.white;

  void changeBackground() {
    setState(() {
      // Generate a random color
      _backgroundColor =
          Colors.primaries[Random().nextInt(Colors.primaries.length)];
    });
  }

  TextEditingController number1Controller = TextEditingController();
  TextEditingController number2Controller = TextEditingController();
  double result = 0;
  String operation = '';

  void calculateResult() {
    double number1 = double.parse(number1Controller.text);
    double number2 = double.parse(number2Controller.text);

    setState(() {
      switch (operation) {
        case 'Add':
          result = number1 + number2;
          break;
        case 'Subtraction':
          result = number1 - number2;
          break;
        case 'Multiply':
          result = number1 * number2;
          break;
        case 'Division':
          result = number1 / number2;
          break;
      }
    });
  }

  TextEditingController _firstNumberController = TextEditingController();
  TextEditingController _secondNumberController = TextEditingController();

  void _navigateToNumberDisplayScreen() {
    int? firstNumber = int.tryParse(_firstNumberController.text);
    int? secondNumber = int.tryParse(_secondNumberController.text);

    if (firstNumber != null && secondNumber != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => NumberDisplayScreen(
            firstNumber: firstNumber,
            secondNumber: secondNumber,
          ),
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Invalid input'),
            content: Text('Please enter valid numbers.'),
            actions: [
              InkWell(
                child: Text('OK'),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  void dispose() {
    _firstNumberController.dispose();
    _secondNumberController.dispose();
    super.dispose();
  }

  String inputNumber = '';
  String reversedNumber = '';

  void reverseNumber() {
    setState(() {
      reversedNumber = inputNumber.split('').reversed.join();
    });
  }

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = Color.fromRGBO(
      redValue.toInt(),
      greenValue.toInt(),
      blueValue.toInt(),
      1.0,
    );
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Text(
                "01) Create an application to take input number from user and print its reverse number in TextField ",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.8,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          inputNumber = value;
                        });
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter a number',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 40,
                width: 170,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    width: 0.8,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: InkWell(
                  onTap: reverseNumber,
                  child: Center(child: Text('Reverse')),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Reversed Number: $reversedNumber',
                style: TextStyle(fontSize: 18),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "02) Create an application to input 2 numbers from user and all numbers between those 2 numbers in next activity",
                    style: TextStyle(fontSize: 20),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 40, left: 30, right: 30),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 0.8,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 17),
                              child: TextField(
                                controller: _firstNumberController,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'First Number',
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 0.8,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 17),
                              child: TextField(
                                controller: _secondNumberController,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: ' Second Number',
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.9),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue),
                          child: InkWell(
                            child: Center(child: Text('Show Numbers')),
                            onTap: _navigateToNumberDisplayScreen,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '3) Create an application with radio buttons (Add, Substraction, Multiply, Division) EditText (number1, number2) and print result as per user choice from radio button in TextView',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                    Text(
                      'Select an operation:',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    Row(
                      children: <Widget>[
                        Radio<String>(
                          value: 'Add',
                          groupValue: operation,
                          onChanged: (String? value) {
                            setState(() {
                              operation = value!;
                            });
                          },
                        ),
                        Text('Add'),
                        Radio<String>(
                          value: 'Subtraction',
                          groupValue: operation,
                          onChanged: (String? value) {
                            setState(() {
                              operation = value!;
                            });
                          },
                        ),
                        Text('Subtraction'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Radio<String>(
                          value: 'Multiply',
                          groupValue: operation,
                          onChanged: (String? value) {
                            setState(() {
                              operation = value!;
                            });
                          },
                        ),
                        Text('Multiply'),
                        Radio<String>(
                          value: 'Division',
                          groupValue: operation,
                          onChanged: (String? value) {
                            setState(() {
                              operation = value!;
                            });
                          },
                        ),
                        Text('Division'),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 40, left: 30, right: 30),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.8,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 17),
                          child: TextField(
                            controller: number1Controller,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Number 1',
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 30, right: 30),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.8,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 17),
                          child: TextField(
                            controller: number2Controller,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Number 2',
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Center(
                      child: Container(
                        height: 40,
                        width: 170,
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.8),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue),
                        child: InkWell(
                          onTap: calculateResult,
                          child: Center(child: Text('Calculate')),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Result: $result',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            height: 300,
            color: _backgroundColor,
            child: Column(
              children: [
                Text(
                  "4) create an application to change background when button is clicked ",
                  style: TextStyle(fontSize: 20),
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: changeBackground,
                    child: Text('Change Background'),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 30),
            child: Column(
              children: [
                Text(
                  "5)create an application to increate font size when plus button click and decrease when minus button click ",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sample Text',
                  style: TextStyle(fontSize: _fontSize),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: increaseFontSize,
                      icon: Icon(Icons.add),
                    ),
                    IconButton(
                      onPressed: decreaseFontSize,
                      icon: Icon(Icons.remove),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 20),
            child: Column(
              children: [
                Text(
                  '6) create an application to display Textview when checkbox is checked and hide otherwise',
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: _isChecked,
                  onChanged: (value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                ),
                Visibility(
                  visible: _isChecked,
                  child: Text(
                    'TextView',
                    style: TextStyle(fontSize: 24.0),
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "7) Write a program to show four images around Textview",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                'images/01.jpg',
                height: 150,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/02.jpg',
                    height: 150,
                  ),
                  SizedBox(width: 20),
                  Text('Image'),
                  SizedBox(width: 20),
                  Image.asset(
                    'images/03.jpg',
                    height: 150,
                  ),
                ],
              ),
              Image.asset(
                'images/04.jpg',
                height: 150,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                '8) Write a program in android display screen color which the Color will be select from the radio button.',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              RadioListTile<Color>(
                title: Text('Red'),
                value: Colors.red,
                groupValue: selectedColor,
                onChanged: (color) {
                  setState(() {
                    selectedColor = color;
                  });
                },
              ),
              RadioListTile<Color>(
                title: Text('Green'),
                value: Colors.green,
                groupValue: selectedColor,
                onChanged: (color) {
                  setState(() {
                    selectedColor = color;
                  });
                },
              ),
              RadioListTile<Color>(
                title: Text('Blue'),
                value: Colors.blue,
                groupValue: selectedColor,
                onChanged: (color) {
                  setState(() {
                    selectedColor = color;
                  });
                },
              ),
              SizedBox(height: 20),
              Container(
                width: 200,
                height: 200,
                color: selectedColor,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '9) Write a program you have taken three seek bar controls. From three Seekbar which Seekbar value changed the background color of device will be changed.',
                  style: TextStyle(fontSize: 20),
                ),
                Slider(
                  value: redValue,
                  min: 0,
                  max: 255,
                  onChanged: (value) {
                    setState(() {
                      redValue = value;
                      updateBackgroundColor();
                    });
                  },
                ),
                Slider(
                  value: greenValue,
                  min: 0,
                  max: 255,
                  onChanged: (value) {
                    setState(() {
                      greenValue = value;
                      updateBackgroundColor();
                    });
                  },
                ),
                Slider(
                  value: blueValue,
                  min: 0,
                  max: 255,
                  onChanged: (value) {
                    setState(() {
                      blueValue = value;
                      updateBackgroundColor();
                    });
                  },
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 200,
                  color: backgroundColor,
                ),
              ],
            ),
          ),
       
       
        ],
      ),
    );
  }
}

class NumberDisplayScreen extends StatelessWidget {
  final int firstNumber;
  final int secondNumber;

  NumberDisplayScreen({required this.firstNumber, required this.secondNumber});

  @override
  Widget build(BuildContext context) {
    List<int> numbers = [];

    if (firstNumber < secondNumber) {
      for (int i = firstNumber + 1; i < secondNumber; i++) {
        numbers.add(i);
      }
    } else {
      for (int i = firstNumber - 1; i > secondNumber; i--) {
        numbers.add(i);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Number Display'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                height: 40,
                width: 130,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.2),
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: Center(
                    child: Text(
                      "$firstNumber   ,   $secondNumber",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
