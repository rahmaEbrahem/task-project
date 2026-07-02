import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TitleAccount extends StatelessWidget {
  const TitleAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("assets/images/Rectangle 82.png"),
        SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Afsar Hossen", style: TextStyle(fontSize: 20)),
                SvgPicture.asset("assets/icons/Vecr.svg"),
              ],
            ),
            Text(
              "Imshuvo97@gmail.com",
              style: TextStyle(fontSize: 16, color: Color(0xff7C7C7C)),
            ),
          ],
        ),
      ],
    );
  }
}
