import 'package:flutter/material.dart';
import 'package:sample_project_01/home/homescreen.dart';
import 'package:sample_project_01/screens/managestore.dart';
import 'package:sample_project_01/widgets/order.dart';

class Navigationhome extends StatefulWidget {
  const Navigationhome({super.key});

  @override
  State<Navigationhome> createState() => _NavigationhomeState();
}

class _NavigationhomeState extends State<Navigationhome> {
  int index = 0;
  // final screen = [
  //   Homescreen(),
  //   Orderpage(),
  //   Managestore(),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Homescreen(),
      
    );
  }
}
