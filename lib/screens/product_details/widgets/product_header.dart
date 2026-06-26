import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductHeader extends StatelessWidget {
  const ProductHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 371,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(25),
          bottomLeft: Radius.circular(25),
        ),
        color: Color(0xffF2F3F2),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.arrow_back_ios),
              SvgPicture.asset("assets/icons/upload.svg"),
            ],
          ),
          SizedBox(height: 27),
          Image.asset("assets/images/Vector.png"),
        ],
      ),
    );
  }
}
