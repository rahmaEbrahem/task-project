import 'package:flutter/material.dart';
import 'package:task_project11/screens/explore/find_product/beverages_screen.dart';

class Catecories {
  final String name;
  final String image;
  Catecories({required this.name, required this.image});
}

class FindProducts extends StatelessWidget {
  FindProducts({super.key});
  final List<Catecories> category = [
    Catecories(
      name: "fresh fruits\n& vegetables",
      image: "assets/images/pngfuel 6.png",
    ),
    Catecories(
      name: "cooking oil\n&chee",
      image: "assets/images/Group 6835.png",
    ),
    Catecories(name: "Meat & fish", image: "assets/images/pngfuel 9.png"),
    Catecories(name: "bakery &snaks", image: "assets/images/pngfuel 6 (1).png"),
    Catecories(name: "Dairy eggs", image: "assets/images/pngfuel.png"),
    Catecories(name: "Beverages", image: "assets/images/pngfuel 6 (2).png"),
  ];
  final List<Color> background = [
    Color(0xff53B175).withValues(alpha: 0.30),
    Color(0xffF8A44C).withValues(alpha: 0.10),
    Color(0xffF7A59340).withValues(alpha: 0.25),
    Color(0xffD3B0E040).withValues(alpha: 0.25),
    Color(0xffFDE59840).withValues(alpha: 0.25),
    Color(0xffB7DFF540).withValues(alpha: 0.25),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      ),
      itemCount: category.length,
      itemBuilder: (context, index) {
        final catego = category[index];
        final bgcolor = background[index];
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BeveragesScreen()),
            );
          },
          child: Container(
            width: 174,
            height: 189,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: bgcolor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 17),
                Image.asset(catego.image),
                SizedBox(height: 19),
                Text(catego.name, style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
        );
      },
    );
  }
}
