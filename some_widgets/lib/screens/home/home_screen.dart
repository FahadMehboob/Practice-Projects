import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isConnected = false;
  String? groupValue = 'one';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Some Widgets",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white70,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           // Switch(
           //   activeColor: Colors.red,
           //     activeTrackColor: Colors.blue,
           //     inactiveTrackColor: Colors.yellow,
           //     inactiveThumbColor: Colors.black,
           //     value: isConnected, onChanged: (value){
           //  setState(() {
           //    isConnected = value;
           //  });
           // }),
           //  SwitchListTile(
           //    title: Text("Switch"),
           //
           //      value: isConnected, onChanged: (value){
           //    setState(() {
           //      isConnected = value!;
           //    });
           //  }),
           //  SizedBox(height: 20,),
           //  Checkbox(value: isConnected, onChanged: (value){
           //    setState(() {
           //      isConnected = value!;
           //    });
           //  }),
           //  CheckboxListTile(
           //    title: Text("Is Connected"),
           //      value: isConnected, onChanged: (value){
           //    setState(() {
           //      isConnected = value!;
           //    });
           //  }),
           //  RadioMenuButton(value: 'one', groupValue: groupValue, onChanged: (value){
           //    setState(() {
           //      groupValue = value;
           //    });
           //  }, child: Text("One"),),
           //  RadioMenuButton(value: 'two', groupValue: groupValue, onChanged: (value){
           //    setState(() {
           //      groupValue = value;
           //    });
           //  }, child: Text("Two"),),
           //  RadioMenuButton(value: 'three', groupValue: groupValue, onChanged: (value){
           //    setState(() {
           //      groupValue = value;
           //    });
           //  }, child: Text("Three"),),
           //  RadioListTile(
           //    title: Text("Question 1"),
           //      subtitle: Text("Answer"),
           //      value: 'four', groupValue: groupValue, onChanged: (value){
           //    setState(() {
           //      groupValue = value;
           //    });
           //  }
           //  ),

            // Wrap(
            //   runSpacing: 10,
            //   spacing: 10,
            //   children: [
            //     Container(color: Colors.blue,
            //     height: 50,
            //     width: 50,),
            //     Container(color: Colors.red,
            //       height: 50,
            //       width: 50,),
            //     Container(color: Colors.green,
            //       height: 50,
            //       width: 50,),
            //     Container(color: Colors.purple,
            //       height: 50,
            //       width: 50,),
            //     Container(color: Colors.blue,
            //       height: 50,
            //       width: 50,),
            //     Container(color: Colors.red,
            //       height: 50,
            //       width: 50,),
            //     Container(color: Colors.green,
            //       height: 50,
            //       width: 50,),
            //     Container(color: Colors.purple,
            //       height: 50,
            //       width: 50,),
            //   ],
            // ),
            CircularProgressIndicator(
              value: 0.8,
            ),
            LinearProgressIndicator(
              value: 0.9,
            ),
          ],
        ),
      ),
    );
  }
}
