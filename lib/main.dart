import 'package:flutter/material.dart';
import 'package:sample_project_01/home/homescreen.dart';
import 'package:sample_project_01/screens/navigationhome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.lightBlue,
    ),
      debugShowCheckedModeBanner: false,
      home:const Homescreen(),
    );
  }
}
