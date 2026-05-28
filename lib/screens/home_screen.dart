import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Image.asset("assets/images/Group.png"),
              Row(children: [Icon(Icons.location_on), Text("Dhaka, Banassre")]),
            ],
          ),
        ),
      ),
    );
  }
}
