import 'package:flutter/material.dart';

class CustomerRow extends StatelessWidget {
  final String title;
  const CustomerRow({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "$title",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight(600),
            color: Color(0xff181725),
          ),
        ),
        Text(
          "see all",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight(600),
            color: Color(0xff53B175),
          ),
        ),
      ],
    );
  }
}
