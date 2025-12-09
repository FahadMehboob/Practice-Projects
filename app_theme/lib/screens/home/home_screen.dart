import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "App Theme",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {}, child: Text("This is elevated button")),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
              onPressed: () {}, child: Text("This is elevated button")),
          SizedBox(
            height: 20,
          ),
          Text(
            "This is text Widget",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          SizedBox(
            height: 20,
          ),
          Icon(Icons.home),
        ],
      )),
    );
  }
}
