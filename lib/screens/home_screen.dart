import 'package:flutter/material.dart';
import 'package:task_project11/widgets/containers/list_of_products.dart';
import 'package:task_project11/widgets/customer_row.dart';
import 'package:task_project11/widgets/food_banner.dart';

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
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search Store",
                    hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight(600),
                      color: Color(0xff7C7C7C),
                    ),
                    border: OutlineInputBorder(),
                    fillColor: Color(0xffF2F3F2),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                FoodBanner(),
                SizedBox(height: 30),
                CustomerRow(title: "Exclusive Offer"),
                SizedBox(height: 20),
                ListOfProducts(),
                SizedBox(height: 30),
                CustomerRow(title: "Best selling"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
