import 'package:flutter/material.dart';
import 'package:task_project11/screens/product_details/widgets/product_header.dart';
import 'package:task_project11/screens/product_details/widgets/product_info.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView(children: [ProductHeader(), ProductInfo()]));
  }
}
