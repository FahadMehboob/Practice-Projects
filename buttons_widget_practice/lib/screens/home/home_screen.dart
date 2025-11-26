import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String home = 'Home Screen';
  bool isCenter = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(home),
          backgroundColor: Colors.grey,
          centerTitle: isCenter,
        ),
        body: IconButton(
            color: Colors.green,
            iconSize: 50,
            onPressed: () {
              setState(() {
                isCenter = !isCenter;
                home = 'Button Daba hai bhai';
              });
            },
            icon: Icon(Icons.search)));
  }
}
