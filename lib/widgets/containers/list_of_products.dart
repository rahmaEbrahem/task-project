import 'package:flutter/material.dart';

class Products {
  final String name;
  final String quantity;
  final String price;
  final String image;
  const Products({
    required this.name,
    required this.price,
    required this.quantity,
    required this.image,
  });
}

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
                  child: Image.asset(
                    product.image,
                    height: 62,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  product.name,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight(400)),
                ),
                SizedBox(height: 5),
                Text(
                  product.quantity,
                  style: TextStyle(color: Color(0xff7C7C7C)),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      product.price,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight(600),
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 45,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xff53B175),
                      ),
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(width: 15);
        },
        itemCount: items.length,
      ),
    );
  }
}
