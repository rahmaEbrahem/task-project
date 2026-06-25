import 'package:flutter/material.dart';
import 'package:task_project11/core/customer_widgets/search_feild.dart';
import 'package:task_project11/screens/explore/find_product/widget/find_products.dart';

class FindProductScreen extends StatelessWidget {
  const FindProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Find Products", style: TextStyle(fontSize: 20)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [SearchFeild(), SizedBox(height: 20), FindProducts()],
        ),
      ),
    );
  }
}
