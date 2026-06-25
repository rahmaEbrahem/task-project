import 'package:flutter/material.dart';

class PlusContainer extends StatelessWidget {
  const PlusContainer({super.key});

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
      child: Icon(Icons.add, color: Color(0xff53B175)),
    );
  }
}
