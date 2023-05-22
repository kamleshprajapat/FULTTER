import 'package:flutter/material.dart';
import 'package:food_delevery_app/flutter/flutter.dart';

class CustomToolbar extends StatefulWidget {
  @override
  _CustomToolbarState createState() => _CustomToolbarState();
}

class _CustomToolbarState extends State<CustomToolbar> {
  List<String> spinnerItems = ['Option 1', 'Option 2', 'Option 3'];
  String selectedSpinnerItem = 'Option 1';

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: selectedSpinnerItem,
                  items: spinnerItems.map((String item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      selectedSpinnerItem = newValue!;
                    });
                  },
                ),
              ),
            ),
          ),
          SizedBox(width: 8.0),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: 'Search',
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      // Perform search functionality here
                      String searchText = searchController.text;
                      print('Searching for: $searchText');
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Example usage:
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}
