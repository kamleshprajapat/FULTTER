import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tabbar/homeScreen.dart';
import 'package:tabbar/person_Screen.dart';
import 'package:tabbar/wi-fi_Screen.dart';

main() {
  runApp(Tablebar());
}

class Tablebar extends StatefulWidget {
  const Tablebar({super.key});

  @override
  State<Tablebar> createState() => _TablebarState();
}

class _TablebarState extends State<Tablebar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
              appBar: AppBar(
                title: Text("TAB BAR EXAMPLE"),
                bottom: TabBar(
                  tabs: [
                    Tab(
                      icon: Icon(Icons.home),
                      text: 'home',
                    ),
                    Tab(
                      icon: Icon(Icons.person),
                      text: 'person',
                    ),
                    Tab(
                      icon: Icon(Icons.signal_wifi_statusbar_4_bar),
                      text: 'Wi-Fi',
                    )
                  ],
                ),
              ),
              body: TabBarView(
                children: [HomeScreen(), Person(), WifiScreen()],
              ))),
    );
  }
}
