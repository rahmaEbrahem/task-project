import 'package:flutter/material.dart';
import 'package:task_project11/core/customer_widgets/files/product_class.dart';
import 'package:task_project11/screens/cart/widget/count_unit/minus_container.dart';
import 'package:task_project11/screens/cart/widget/count_unit/plus_container.dart';

class CartList extends StatelessWidget {
  CartList({super.key});
  final List<Products> item = [
    Products(
      name: "Organic Bananas",
      price: "\$4.99",
      quantity: "7pcs,priceg",
      image: "assets/images/banana-png-32.png",
    ),
    Products(
      name: "Red Apple",
      price: "\$4.99",
      quantity: "1kg,priceg",
      image: "assets/images/pngfuel 1 (1).png",
    ),
    Products(
      name: "Organic Bananas",
      price: "\$4.99",
      quantity: "7pcs,priceg",
      image: "assets/images/banana-png-32.png",
    ),
    Products(
      name: "Red Apple",
      price: "\$4.99",
      quantity: "1kg,priceg",
      image: "assets/images/pngfuel 1 (1).png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        final product = item[index];
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            children: [
              Image.asset(product.image, width: 68, height: 54),
              SizedBox(width: 24),
              Column(
                children: [
                  Text(product.name),
                  Text(product.quantity),
                  SizedBox(height: 12),
                  Row(children: [MinusContainer(), Text("1"), PlusContainer()]),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.close),
                  SizedBox(height: 40),
                  Text(product.price),
                ],
              ),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) {
        return Divider(
          indent: 25,
          endIndent: 25,
          thickness: 1,
          color: Color(0xffE2E2E2),
        );
      },
      itemCount: item.length,
    );
  }
}
