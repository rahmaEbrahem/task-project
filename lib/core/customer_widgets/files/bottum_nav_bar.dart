import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_project11/screens/account_screen/my_account.dart';
import 'package:task_project11/screens/cart/my_cart.dart';
import 'package:task_project11/screens/explore/find_product/find_product_screen.dart';
import 'package:task_project11/screens/favorite/favorite_screen.dart';
import 'package:task_project11/screens/home_screen/home_screen.dart';

class BottumNavBar extends StatefulWidget {
  BottumNavBar({super.key});

  @override
  State<BottumNavBar> createState() => _BottumNavBarState();
}

class _BottumNavBarState extends State<BottumNavBar> {
  int activeindex = 0;
  List<Widget> screens = [
    HomeScreen(),
    FindProductScreen(),
    MyCart(),
    FavoriteScreen(),
    MyAccount(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            activeindex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: activeindex,
        selectedItemColor: Color(0xff53B175),
        unselectedItemColor: Color(0xff181725),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/Vector.svg",
              colorFilter: ColorFilter.mode(
                activeindex == 0 ? Color(0xff53B175) : Colors.grey,
                BlendMode.srcIn,
              ),
            ),
            label: "shope",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/Group 3.svg",
              colorFilter: ColorFilter.mode(
                activeindex == 1 ? Color(0xff53B175) : Colors.grey,
                BlendMode.srcIn,
              ),
            ),
            label: "Explor",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/Vector (1).svg",
              colorFilter: ColorFilter.mode(
                activeindex == 2 ? Color(0xff53B175) : Colors.grey,
                BlendMode.srcIn,
              ),
            ),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/bookmark 1.svg",
              colorFilter: ColorFilter.mode(
                activeindex == 3 ? Color(0xff53B175) : Colors.grey,
                BlendMode.srcIn,
              ),
            ),
            label: "Favourite",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/user 1.svg",
              colorFilter: ColorFilter.mode(
                activeindex == 4 ? Color(0xff53B175) : Colors.grey,
                BlendMode.srcIn,
              ),
            ),
            label: "Account",
          ),
        ],
      ),
      body: screens[activeindex],
    );
  }
}
