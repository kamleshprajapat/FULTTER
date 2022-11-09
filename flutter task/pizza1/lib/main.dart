import 'package:flutter/material.dart';

main() {
  runApp(App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    final urlImage =
        ("https://media.istockphoto.com/photos/cheesy-pepperoni-pizza-picture-id938742222?k=20&m=938742222&s=612x612&w=0&h=X5AlEERlt4h86X7U7vlGz3bDaDDGQl4C3MuU99u2ZwQ=");
    var url_list = ("3  Wise Monkeys");
    var img_list =
        ("https://media.istockphoto.com/photos/cheesy-pepperoni-pizza-picture-id938742222?k=20&m=938742222&s=612x612&w=0&h=X5AlEERlt4h86X7U7vlGz3bDaDDGQl4C3MuU99u2ZwQ=");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          title: Text(
            "Makan de Rumah",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(16),
          children: <Widget>[
            Image.network(
              urlImage,
              height: 300,
              width: 300,
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.only(right: 1050),
              child: Column(
                //  mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(url_list,
                      style: TextStyle(color: Colors.black, fontSize: 35)),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(7),
                  // child: Icon(Icons.star),
                ),
                Icon(
                  Icons.star,
                  size: 30,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  size: 30,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  size: 30,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  size: 30,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star_half,
                  size: 30,
                  color: Colors.yellow,
                ),
                Text(
                  "4.5",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "(2.051  Reviews)",
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 126, 121, 121)),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(9),
                ),
                Text(
                  "Rajathan , MountAbu",
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 126, 121, 121)),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(9),
                ),
                Text(
                  "IDR  450,00 / person",
                  style: TextStyle(fontSize: 20, color: Colors.green),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                //      physics: BouncingScrollPhysics(),
                // padding: EdgeInsets.all(16),
                Image.network(
                  img_list,
                  height: 200,
                  width: 200,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
