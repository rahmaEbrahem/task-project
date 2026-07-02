import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_project11/core/customer_widgets/custom_divider.dart';

class Account {
  final String iconpath;
  final String title;
  Account({required this.iconpath, required this.title});
}

class ListAccount extends StatelessWidget {
  ListAccount({super.key});
  final List<Account> accountlist = [
    Account(iconpath: "assets/icons/Orders icon.svg", title: "Orders"),
    Account(iconpath: "assets/icons/My Details icon.svg", title: "My Details"),
    Account(
      iconpath: 'assets/icons/Delicery address.svg',
      title: "Delivery Address",
    ),
    Account(iconpath: "assets/icons/Vector icon.svg", title: 'Payment Methods'),
    Account(iconpath: "assets/icons/Promo Cord icon.svg", title: "Promo Cord"),
    Account(iconpath: "assets/icons/Bell icon.svg", title: "Notifecations "),
    Account(iconpath: "assets/icons/help icon.svg", title: "Help"),
    Account(iconpath: "assets/icons/Bell icon.svg", title: "About"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final item = accountlist[index];

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              SvgPicture.asset(item.iconpath),
              SizedBox(width: 10),
              Text(
                item.title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight(600),
                  color: Color(0xff181725),
                ),
              ),
              Spacer(),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) {
        return CustomDivider();
      },
      itemCount: accountlist.length,
    );
  }
}
