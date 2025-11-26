import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container Widget"),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        height: 100,
        width:300,
        margin: EdgeInsets.zero,
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        constraints: BoxConstraints(maxHeight: 50,
        minHeight: 25),
        alignment: Alignment.center,
        color: Colors.blueGrey,
        child: Container(height: double.infinity,
        width: double.infinity,
        color: Colors.red,),
      ),
    );
  }
}
