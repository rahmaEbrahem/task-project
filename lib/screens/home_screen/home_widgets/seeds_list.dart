import 'package:flutter/material.dart';

class Items {
  final String name;
  final String image;
  Items({required this.name, required this.image});
}

class SeedsList extends StatelessWidget {
  SeedsList({super.key});
  final List<Items> item = [
    Items(
      name: "Pulses",
      image:
          "assets/images/4215936-pulses-png-8-png-image-pulses-png-409_409 1.png",
    ),
    Items(
      name: "Rice",
      image: "assets/images/8-82858_download-sack-of-rice-png 1.png",
    ),
    Items(
      name: "Pulses",
      image:
          "assets/images/4215936-pulses-png-8-png-image-pulses-png-409_409 1.png",
    ),
    Items(
      name: "Rice",
      image: "assets/images/8-82858_download-sack-of-rice-png 1.png",
    ),
  ];
  final List<Color> colorcontainer = [Color(0xffF8A44C), Color(0xff53B175)];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final seed = item[index];
          final filledcolor = colorcontainer[index % colorcontainer.length];
          return Container(
            width: 248,
            padding: EdgeInsets.only(left: 16.94),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: filledcolor,
            ),
            child: Row(
              children: [
                Image.asset(seed.image),
                SizedBox(width: 15),
                Text(
                  seed.name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight(600)),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(width: 14.95);
        },
        itemCount: item.length,
      ),
    );
  }
}
