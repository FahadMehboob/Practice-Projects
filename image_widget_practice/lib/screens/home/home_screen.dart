import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
      ),
      body: CircleAvatar(
        radius: 100,
        backgroundImage: AssetImage('assets/images/image1.jpg'),
      ),
    );
  }
}
