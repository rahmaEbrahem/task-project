import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_project11/screens/product_details/widgets/counter.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Naturel Red Apple", style: TextStyle(fontSize: 24)),
              SizedBox(height: 10),
              Text(
                "1kg, Price",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight(600),
                  color: Color(0xff7C7C7C),
                ),
              ),
              SizedBox(height: 30),
              Row(children: [Icon(Icons.remove), Counter(), Icon(Icons.add)]),
            ],
          ),
          Column(
            children: [
              SvgPicture.asset("assets/icons/bookmark 1.svg"),
              SizedBox(height: 67),
              Text('\$4.99', style: TextStyle(fontSize: 24)),
            ],
          ),
        ],
      ),
    );
  }
}
