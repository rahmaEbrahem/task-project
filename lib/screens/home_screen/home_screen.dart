import 'package:flutter/material.dart';
import 'package:task_project11/core/customer_widgets/search_feild.dart';
import 'package:task_project11/screens/home_screen/home_widgets/home_slider.dart';
import 'package:task_project11/screens/home_screen/home_widgets/list_of_groceries.dart';
import 'package:task_project11/screens/home_screen/home_widgets/list_of_products.dart';
import 'package:task_project11/screens/home_screen/home_widgets/see_all_title.dart';
import 'package:task_project11/screens/home_screen/home_widgets/food_banner.dart';
import 'package:task_project11/screens/home_screen/home_widgets/seeds_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 15),
                Image.asset("assets/images/Group.png", width: 25, height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.location_on), Text("Dhaka, Banassre")],
                ),
                SizedBox(height: 20),
                SearchFeild(),
                SizedBox(height: 20),
                HomeSlider(),
                SizedBox(height: 30),
                SeeAllTitle(title: "Exclusive Offer"),
                SizedBox(height: 20),
                ListOfProducts(),
                SizedBox(height: 30),
                SeeAllTitle(title: "Best selling"),
                SizedBox(height: 20),
                ListOfProducts(),
                SizedBox(height: 30),
                SeeAllTitle(title: "Groceries"),
                SizedBox(height: 20),
                SeedsList(),
                SizedBox(height: 20),
                ListOfGroceries(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
