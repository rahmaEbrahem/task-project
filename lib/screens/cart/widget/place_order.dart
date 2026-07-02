import 'package:flutter/material.dart';
import 'package:task_project11/core/customer_widgets/containers/greenbutton.dart';

class PlaceOrder extends StatelessWidget {
  const PlaceOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 120),
            Image.asset("assets/images/Group 6872.png", fit: BoxFit.cover),
            SizedBox(height: 30),
            Text(
              "Your Order has been \n accepted",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight(600)),
            ),
            SizedBox(height: 20),
            Text(
              "Your items has been placcd and is on \n 'it’s way to being processed",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Color(0xff7C7C7C)),
            ),
            SizedBox(height: 120),
            Greenbutton(text: "Track Order"),
            SizedBox(height: 20),
            Text(
              "Back to home",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight(600)),
            ),
          ],
        ),
      ),
    );
  }
}
