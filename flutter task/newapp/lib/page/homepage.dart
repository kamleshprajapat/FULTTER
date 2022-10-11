import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.5),
      body: Container(
        height: double.infinity,
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://thumbs.dreamstime.com/b/greek-food-background-traditional-different-dishes-top-view-close-up-153149838.jpg"),
              fit: BoxFit.cover),
        ),
        child: Stack(fit: StackFit.expand, children: <Widget>[
          Container(
            margin: const EdgeInsets.all(32.0),
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(Icons.restaurant_menu),
                Text('Good food'),
                Text(
                    'Nutritionally balanced, easy to cook recipes.\n Quality fresh local ingredients.'),
                RaisedButton(
                  child: Text("Create Account"),
                  onPressed: () {},
                ),
                Text.rich(
                  TextSpan(children: [
                    TextSpan(text: "Alredy have account?"),
                    TextSpan(text: "lon in")
                  ]),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
