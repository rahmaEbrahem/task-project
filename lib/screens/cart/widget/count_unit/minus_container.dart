import 'package:flutter/material.dart';

class MinusContainer extends StatelessWidget {
  const MinusContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Icon(Icons.remove, color: Color(0xff53B175)),
    );
  }
}
