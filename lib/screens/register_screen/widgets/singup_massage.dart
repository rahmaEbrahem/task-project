import 'package:flutter/material.dart';

class SingupMassage extends StatelessWidget {
  const SingupMassage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already have an account?",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight(600)),
        ),
        Text(
          "Singup",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight(600),
            color: Color(0xff53B175),
          ),
        ),
      ],
    );
  }
}
