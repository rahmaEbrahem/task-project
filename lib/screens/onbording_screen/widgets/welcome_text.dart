import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsetsGeometry.only(left: 49.5, right: 49.5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/Group (1).png",
              height: 56.36,
              width: 48.47,
            ),
            SizedBox(height: 25),
            Text(
              "Welcome\nto our store",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight(600),
                color: Color(0xffFFFFFF),
              ),
            ),
            SizedBox(height: 3),
            Text(
              "Ger your groceries in as fast as one hour",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight(400),
                color: Color(0xffFCFCFCB2).withValues(alpha: 0.7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
