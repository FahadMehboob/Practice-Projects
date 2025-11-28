import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Widget"),
        backgroundColor: Colors.amberAccent,
      ),
      body: ListView(
        
        children:  [
          for(int i =0; i<=50; i++)
         const  ListTile(
            leading: CircleAvatar(
              backgroundImage:NetworkImage("https://img.freepik.com/free-photo/closeup-scarlet-macaw-from-side-view-scarlet-macaw-closeup-head_488145-3540.jpg?semt=ais_hybrid&w=740&q=80"),
            ),
            title: Text("Title Agaya"),
            subtitle: Text("Subtitle bhi agaya"),
            trailing: Icon(Icons.account_tree_outlined),
          ),
        ],
      ),
    );
  }
}
