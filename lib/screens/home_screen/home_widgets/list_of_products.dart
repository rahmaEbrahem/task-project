import 'package:flutter/material.dart';
import 'package:task_project11/core/customer_widgets/containers/add_container.dart';
import 'package:task_project11/core/customer_widgets/containers/card_container.dart';
import '../../../core/customer_widgets/files/product_class.dart';

class ListOfProducts extends StatelessWidget {
  const ListOfProducts({super.key});
  final List<Products> items = const [
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
    return SizedBox(
      height: 248,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 15),
        itemBuilder: (context, index) {
          final product = items[index];
          return CardContainer(item: product);
        },
        separatorBuilder: (context, index) {
          return const SizedBox(width: 15);
        },
        itemCount: items.length,
      ),
    );
  }
}
