import 'package:flutter/material.dart';

class PrivacyPoliceRow extends StatelessWidget {
  const PrivacyPoliceRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          children: [
            Text("By continuing you agree to our "),
            Text(
              "Terms of Service",
              style: TextStyle(color: Color(0xff53B175)),
            ),
            Text(" and"),
            Text(
              " Privacy Policy.",
              style: TextStyle(color: Color(0xff53B175)),
            ),
          ],
        ),
      ],
    );
  }
}
