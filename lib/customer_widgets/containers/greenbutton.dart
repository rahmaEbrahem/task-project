import 'package:flutter/material.dart';

class Greenbutton extends StatelessWidget {
  final String text;
  const Greenbutton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 67,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xff53B175),
        borderRadius: BorderRadius.circular(19),
      ),
      child: Center(
        child: Text(
          "$text",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight(600),
            color: Color(0xffFFF9FF),
          ),
        ),
      ),
    );
  }
}
