import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyAnimation extends StatefulWidget {
  const MyAnimation({super.key});

  @override
  State<MyAnimation> createState() => _MyAnimationState();
}

class _MyAnimationState extends State<MyAnimation> {
  double _opacity = 1;
  double _margin = 0;
  double _width = 200;
  double _height = 300;
  Color _color = Colors.pink;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Animation",
        ),
      ),
      body: AnimatedContainer(
        duration: Duration(seconds: 5),
        margin: EdgeInsets.all(_margin),
        width: _width,
        color: _color,
        height: _height,
        child: Column(
          children: [
            ElevatedButton(
              onPressed: (() {
                setState(() {
                  _margin = 60;
                  _color = Colors.blue;
                });
              }),
              child: Text("Margin_Animation"),
            ),
            ElevatedButton(
              onPressed: (() {
                setState(() {
                  _color = Colors.yellow;
                  //   _width = 180;
                });
              }),
              child: Text("Color_Animation"),
            ),
            ElevatedButton(
              onPressed: (() {
                setState(() {
                  _width = 600;
                });
              }),
              child: Text("width Animation"),
            ),
            ElevatedButton(
                onPressed: (() {
                  setState(() {
                    _height = 500;
                  });
                }),
                child: Text("oggk"))
          ],
        ),
      ),
    );
  }
}
