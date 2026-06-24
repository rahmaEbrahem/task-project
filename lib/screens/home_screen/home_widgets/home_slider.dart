import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:task_project11/screens/home_screen/home_widgets/food_banner.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterCarousel(
      items: [
        FoodBanner(),
        SizedBox(
          height: 115,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              "assets/images/png-clipart-grocery-store-kabul-farms-supermarket-food-online-grocer-grocery-food-food-supermarket-thumbnail.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 50,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              "assets/images/pngtree-grocery-basket-and-a-list-of-products-png-image_14956705.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
      options: FlutterCarouselOptions(
        height: 115,
        showIndicator: true,
        slideIndicator: CircularSlideIndicator(
          slideIndicatorOptions: SlideIndicatorOptions(
            currentIndicatorColor: Color(0xff53B175),
            indicatorBackgroundColor: Color(0xffF2F3F2),
            indicatorRadius: 5,
          ),
        ),
        viewportFraction: 1.0,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 5),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
