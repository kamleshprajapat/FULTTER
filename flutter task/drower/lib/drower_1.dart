import 'package:drower/header.dart';
import 'package:drower/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Drower_1 extends StatefulWidget {
  const Drower_1({super.key});

  @override
  State<Drower_1> createState() => _Drower_1State();
}

enum DrawerSections { dashboard, context, setting }

var mainConyainer;
var curent_Page = DrawerSections.dashboard;

class _Drower_1State extends State<Drower_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigesion"),
      ),
      body: mainConyainer,
      drawer: Drawer(
          child: SingleChildScrollView(
        child: Column(
          children: [Header()],
        ),
      )),
    );
  }
}
