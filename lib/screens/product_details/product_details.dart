import 'package:flutter/material.dart';
import 'package:task_project11/core/customer_widgets/containers/greenbutton.dart';
import 'package:task_project11/core/customer_widgets/custom_divider.dart';
import 'package:task_project11/screens/product_details/widgets/product_header.dart';
import 'package:task_project11/screens/product_details/widgets/product_info.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool showDescriptionText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: ListView(
          children: [
            ProductHeader(),
            ProductInfo(),
            CustomDivider(),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Product Detail",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight(600),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          showDescriptionText = !showDescriptionText;
                        });
                      },
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
                if (showDescriptionText)
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
                      style: TextStyle(fontSize: 13, color: Color(0xff7C7C7C)),
                    ),
                  ),
              ],
            ),
            CustomDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Nutritions",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight(600)),
                ),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
            CustomDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Review",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight(600)),
                ),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
            SizedBox(height: 15),
            Greenbutton(text: "Add To Basket"),
          ],
        ),
      ),
    );
  }
}
