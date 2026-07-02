import 'package:flutter/material.dart';
import 'package:task_project11/core/customer_widgets/containers/greenbutton.dart';
import 'package:task_project11/core/customer_widgets/custom_divider.dart';
import 'package:task_project11/screens/cart/widget/place_order.dart';

class BoxItem {
  final String title;
  final String data;
  BoxItem({required this.title, required this.data});
}

class CheckoutBox extends StatelessWidget {
  CheckoutBox({super.key});
  List<BoxItem> item = [
    BoxItem(title: "Delivery", data: "Select Method"),
    BoxItem(title: 'Promo Code', data: "Pick discount"),
    BoxItem(title: "Total Cost", data: '\$13.97'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Checkout",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight(600)),
                ),
                Icon(Icons.close),
              ],
            ),
            CustomDivider(),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                final carditem = item[index];
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      carditem.title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight(600),
                        color: Color(0xff7C7C7C),
                      ),
                    ),
                    Text(
                      carditem.data,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight(600),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                );
              },
              separatorBuilder: (context, index) {
                return CustomDivider();
              },
              itemCount: item.length,
            ),
            CustomDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Pament",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight(600),
                    color: Color(0xff7C7C7C),
                  ),
                ),
                Image.asset('assets/images/logo.png'),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
            CustomDivider(),
            Text(
              "By placing an order you agree to our\nTerms And Conditions",
              style: TextStyle(fontWeight: FontWeight(600)),
            ),
            Greenbutton(
              text: "Place Order",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return PlaceOrder();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
