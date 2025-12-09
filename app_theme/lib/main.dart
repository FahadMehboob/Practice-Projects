import 'package:app_theme/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.blue,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.all(15),
            ),
          ),
          textTheme: TextTheme(
            headlineLarge: TextStyle(fontSize: 30),
          ),
          iconTheme: IconThemeData(size: 50, color: Colors.red),
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.indigo,
            iconTheme: IconThemeData(color: Colors.white, size: 20),
          )),
      home: HomeScreen(),
    );
  }
}
