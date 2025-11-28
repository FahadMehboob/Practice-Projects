import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive Ui Widgets Practice"),
        backgroundColor: Colors.yellowAccent,
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.green,
              height: 100,
            ),
          ),
          Spacer(
            flex: 2,
          ),
          Expanded(
            child: Container(
              color: Colors.grey,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
