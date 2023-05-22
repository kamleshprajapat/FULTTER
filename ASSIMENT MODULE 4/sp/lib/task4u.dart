import 'package:flutter/material.dart';

void main() {
  runApp(CitySelectionApp());
}

class CitySelectionApp extends StatefulWidget {
  @override
  _CitySelectionAppState createState() => _CitySelectionAppState();
}

class _CitySelectionAppState extends State<CitySelectionApp> {
  String selectedCity = ''; // Variable to store the selected city

  List<String> cities = [
    'New York',
    'London',
    'Paris',
    'Tokyo',
    'Sydney',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('City Selection'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Select a City'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: cities.map((city) {
                              return RadioListTile<String>(
                                title: Text(city),
                                value: city,
                                groupValue: selectedCity,
                                onChanged: (String? value) {
                                  setState(() {
                                    selectedCity = value!;
                                    Navigator.of(context).pop();
                                  });
                                },
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Text('Select City'),
              ),
              SizedBox(height: 16),
              Text('Selected City: $selectedCity'),
            ],
          ),
        ),
      ),
    );
  }
}
