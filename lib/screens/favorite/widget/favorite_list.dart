import 'package:flutter/material.dart';
import 'package:task_project11/core/customer_widgets/files/product_class.dart';

class FavoriteList extends StatelessWidget {
  FavoriteList({super.key});
  final List<Products> favorites = [
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
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        final product = favorites[index];
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            children: [
              Image.asset(product.image, width: 68, height: 54),
              SizedBox(width: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.name, style: TextStyle(fontSize: 16)),
                  Text(
                    product.quantity,
                    style: TextStyle(color: Color(0xff7C7C7C)),
                  ),
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Text(product.price), Icon(Icons.arrow_forward_ios)],
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
      itemCount: favorites.length,
    );
  }
}
