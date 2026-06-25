import 'package:flutter/material.dart';
import 'package:task_project11/core/customer_widgets/containers/greenbutton.dart';
import 'package:task_project11/screens/favorite/widget/favorite_list.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Favorites", style: TextStyle(fontSize: 20))),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(height: 1, thickness: 1, color: Color(0xffE2E2E2)),
            SizedBox(height: 10),
            FavoriteList(),
            SizedBox(height: 20),
            Greenbutton(text: "Add All to cart"),
          ],
        ),
      ),
    );
  }
}
