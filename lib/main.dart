import 'package:flutter/material.dart';
import 'homepage.dart'; // Add semicolon here

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Fix syntax for super constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ); // Remove extra 's' here
  }
}
