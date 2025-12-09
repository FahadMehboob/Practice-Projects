import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<String> items = ["Home",  "Setting", "Search",];
  List<Widget> myWidget = [
    Text("This is Home Screen",style: TextStyle(fontSize: 30),),
    Text("This is Setting Screen",style: TextStyle(fontSize: 30),),
    Text("This is Search Screen",style: TextStyle(fontSize: 30),),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Bottom Navigation Practice",
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        backgroundColor: Colors.yellowAccent,
      ),
      body: Center(
        child: myWidget[index],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
          iconSize: 28,
          unselectedItemColor: Colors.grey.shade700,
          backgroundColor: Colors.yellow,

          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          currentIndex: index,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          ]),
    );
  }
}
