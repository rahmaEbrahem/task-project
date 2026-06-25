import 'package:flutter/material.dart';
import 'package:task_project11/core/customer_widgets/containers/greenbutton.dart';
import 'package:task_project11/screens/cart/widget/cart_list.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("MyCart", style: TextStyle(fontSize: 20))),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(height: 1, thickness: 1, color: Color(0xffE2E2E2)),
            SizedBox(height: 10),
            CartList(),
            SizedBox(height: 20),
            Greenbutton(text: "checkout"),
          ],
        ),
      ),
    );
  }
}
