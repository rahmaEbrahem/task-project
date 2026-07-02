import 'package:flutter/material.dart';
import 'package:task_project11/screens/onbording_screen/onbording_screen.dart';
import 'package:task_project11/screens/splashscreen/splach_screen.dart';

class Grocery extends StatelessWidget {
  const Grocery({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplachScreen());
  }
}
