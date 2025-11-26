import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text("HomeScreen"),
      ),
      body:  const Text(
        textAlign: TextAlign.justify,
        'Hello World ahsahahsahhashsahsahsahhsah hashsahhas hashsahahhahsa ',
        style: TextStyle(
          fontFamily: 'IbmFont',
          fontSize: 30,
          color: Colors.red,
         backgroundColor: Colors.blue,

          wordSpacing: 15,
          letterSpacing: 5.0,
          height: 2.0,
        ),
      ),
    );
  }
}
