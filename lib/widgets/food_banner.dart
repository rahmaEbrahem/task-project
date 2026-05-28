import 'package:flutter/material.dart';

class FoodBanner extends StatelessWidget {
  const FoodBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 367,
      height: 115,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xffF3F5F7),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Stack(
          children: [
            Positioned(
              top: -8,
              right: -8,
              child: Image.asset(
                'assets/images/3698 1.png',
                width: 127,
                height: 56,
              ),
            ),
            Positioned(
              bottom: -2,
              right: 2,
              child: Image.asset(
                "assets/images/pngfuel 1.png",
                width: 33,
                height: 46,
              ),
            ),
            Positioned(
              top: -8,
              left: -20,
              child: Image.asset(
                "assets/images/pngfuel 2.png",
                width: 110,
                height: 118,
              ),
            ),
            Positioned(
              top: 5,
              left: 20,
              child: Image.asset(
                "assets/images/2771 1.png",
                width: 122,
                height: 105,
              ),
            ),
            Positioned(
              top: 36,
              right: 32,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Fresh Vegetables", style: TextStyle(fontSize: 20)),
                  Text(
                    "Get Up To 40% OFF",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight(500),
                      color: Color(0xff53B175),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
