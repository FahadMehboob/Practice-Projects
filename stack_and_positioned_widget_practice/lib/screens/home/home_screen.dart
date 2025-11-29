import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        title: Text("Stack And Positioned Widget"),
      ),
      body: Stack(
        children: [
          const Positioned(
            top: 200,
            left: 100,
            child: Column(
              children: [
                Text(
                  "Hello World",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Positioned(
            left: -100,
            bottom: 0,
            child: Container(
              color: Colors.red,
              width: 200,
              height: 200,
            ),
          ),
          Positioned(
            right: -50,
            top: -40,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.teal,
                shape: BoxShape.circle,
              ),
            ),
          )
        ],
      ),
    );
  }
}
