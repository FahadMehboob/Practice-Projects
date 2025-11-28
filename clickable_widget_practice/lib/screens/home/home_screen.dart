import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clickable Widgets"),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Column(
        children: [
          GestureDetector(
            child: Container(
              height: 100,
              width: 200,
              color: Colors.yellow,
            ),
            onTap: () {
              print("Clicked button ====== >");
            },
            onLongPress: () {
              print("Long Clicked button ====== >");
            },
            onDoubleTap: () {
              print("Double Tap Clicked button ====== >");
            },
          ),
          InkWell(
            onTap: () {
              print("Click from inkWell");
            },
            onDoubleTap: () {
              print("Double tap from inkWell");
            },
            onLongPress: () {
              print("Long press from inkWell");
            },
            child: Text(
              "Hello From InkWell",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
