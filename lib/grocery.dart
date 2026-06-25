import 'package:flutter/material.dart';
import 'package:task_project11/screens/cart/my_cart.dart';
import 'package:task_project11/screens/explore/find_product/beverages_screen.dart';
import 'package:task_project11/screens/explore/find_product/find_product_screen.dart';
import 'package:task_project11/screens/login_screen/login_screen.dart';
import 'package:task_project11/screens/onbording_screen/onbording_screen.dart';

class Grocery extends StatelessWidget {
  const Grocery({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyCart());
  }
}
