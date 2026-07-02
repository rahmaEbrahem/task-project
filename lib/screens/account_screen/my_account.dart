import 'package:flutter/material.dart';
import 'package:task_project11/core/customer_widgets/custom_divider.dart';
import 'package:task_project11/screens/account_screen/list_account.dart';
import 'package:task_project11/screens/account_screen/title_account.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              TitleAccount(),
              CustomDivider(),
              ListAccount(),
              SizedBox(height: 180),
              Container(
                width: double.infinity,
                height: 67,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xffF2F3F2),
                  borderRadius: BorderRadius.circular(19),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_forward_outlined,
                      color: Color(0xff53B175),
                    ),
                    SizedBox(width: 130),
                    Text(
                      "Log out",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight(600),
                        color: Color(0xff53B175),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
