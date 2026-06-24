import 'package:flutter/material.dart';
import '../../../core/customer_widgets/product_class.dart';
import 'add_container.dart';

class CardContainer extends StatelessWidget {
  final Products item;
  const CardContainer({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 173,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Color(0xff7C7C7C)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(item.image, height: 62, fit: BoxFit.contain),
          ),
          SizedBox(height: 20),
          Text(
            item.name,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight(400)),
          ),
          SizedBox(height: 5),
          Text(item.quantity, style: TextStyle(color: Color(0xff7C7C7C))),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                item.price,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight(600)),
              ),
              AddContainer(),
            ],
          ),
        ],
      ),
    );
    ;
  }
}
