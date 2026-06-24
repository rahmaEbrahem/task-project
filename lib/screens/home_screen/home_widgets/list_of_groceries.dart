import 'package:flutter/material.dart';
import 'package:task_project11/core/customer_widgets/product_class.dart';
import 'package:task_project11/core/customer_widgets/containers/card_container.dart';

class ListOfGroceries extends StatelessWidget {
  ListOfGroceries({super.key});
  final List<Products> groceries = [
    Products(
      name: 'Beef Bone',
      price: "\$4.99",
      quantity: "1kg, Priceg",
      image: "assets/images/pngfuel 4.png",
    ),
    Products(
      name: "Broiler Chicken",
      price: "\$4.99",
      quantity: "1kg, Priceg",
      image: "assets/images/pngfuel 5.png",
    ),
    Products(
      name: 'Beef Bone',
      price: "\$4.99",
      quantity: "1kg, Priceg",
      image: "assets/images/pngfuel 4.png",
    ),
    Products(
      name: "Broiler Chicken",
      price: "\$4.99",
      quantity: "1kg, Priceg",
      image: "assets/images/pngfuel 5.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 248,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 15),
        itemBuilder: (context, index) {
          final product = groceries[index];
          return CardContainer(item: product);
        },
        separatorBuilder: (context, index) {
          return const SizedBox(width: 15);
        },
        itemCount: groceries.length,
      ),
    );
  }
}
