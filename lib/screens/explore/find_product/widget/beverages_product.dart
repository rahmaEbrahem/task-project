import 'package:flutter/material.dart';
import 'package:task_project11/core/customer_widgets/containers/card_container.dart';
import 'package:task_project11/core/customer_widgets/product_class.dart';

class BeveragesProduct extends StatelessWidget {
  BeveragesProduct({super.key});
  final List<Products> beverage = [
    Products(
      name: "Diet Coke",
      price: '\$1.99',
      quantity: "355ml, Price",
      image: "assets/images/pngfuel 11.png",
    ),
    Products(
      name: "Sprite Can",
      price: "\$1.50",
      quantity: "355ml, Price",
      image: "assets/images/pngfuel 12.png",
    ),
    Products(
      name: "Apple&Grape juice",
      price: "\$15.99",
      quantity: '2L, Price',
      image: "assets/images/tree-top-juice-apple-grape-64oz 1.png",
    ),
    Products(
      name: 'Orange juice',
      price: "\$15.99",
      quantity: "2L, Price",
      image: "assets/images/tree-top-juice-apple-grape-64oz 1 (1).png",
    ),
    Products(
      name: "coca cola can",
      price: "\$4.99",
      quantity: "325ml, Price",
      image: "assets/images/pngfuel 13.png",
    ),
    Products(
      name: "pepsi can",
      price: "\$4.99",
      quantity: "330ml, Price",
      image: "assets/images/pngfuel 14.png",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 14.8,
        childAspectRatio: 8 / 12,
        mainAxisSpacing: 15,
      ),
      itemBuilder: (context, index) {
        final unit = beverage[index];
        return CardContainer(item: unit);
      },
      itemCount: beverage.length,
    );
  }
}
