import 'package:flutter/material.dart';

class PrivacyPoliceRow extends StatelessWidget {
  const PrivacyPoliceRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("By continuing you agree to our "),
            Text(
              "Terms of Service",
              style: TextStyle(color: Color(0xff53B175)),
            ),
          ],
        ),
        Row(
          children: [
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
