import 'package:flutter/material.dart';

class Subtitles extends StatelessWidget {
  final String title;
  const Subtitles({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      "$title",
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight(600),
        color: Color(0xff7C7C7C),
      ),
    );
  }
}
