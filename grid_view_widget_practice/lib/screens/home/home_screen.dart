import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Grid View Widget Practice",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: GridView(
        padding: EdgeInsets.all(10),
        gridDelegate:const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200),
        children: [
          Image.asset(
            'assets/images/image1.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/images/image2.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/images/image3.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/images/image4.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/images/image5.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/images/image4.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/images/image5.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/images/image4.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/images/image5.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/images/image4.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/images/image5.jpg',
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
