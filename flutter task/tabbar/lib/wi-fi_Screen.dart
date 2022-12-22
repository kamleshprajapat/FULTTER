import 'package:flutter/material.dart';

class WifiScreen extends StatefulWidget {
  const WifiScreen({super.key});

  @override
  State<WifiScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<WifiScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Wi-Fi Screen",
          style: TextStyle(fontSize: 36),
        ),
      ),
    );
  }
}
