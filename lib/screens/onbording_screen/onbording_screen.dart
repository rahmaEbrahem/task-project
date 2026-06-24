import 'package:flutter/material.dart';
import 'package:task_project11/customer_widgets/containers/greenbutton.dart';
import 'package:task_project11/screens/login_screen/login_screen.dart';
import 'package:task_project11/screens/onbording_screen/widgets/app_image.dart';
import 'package:task_project11/screens/onbording_screen/widgets/gradient_color.dart';
import 'package:task_project11/screens/onbording_screen/widgets/welcome_text.dart';

class OnbordingScreen extends StatelessWidget {
  const OnbordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AppImage(),
          GradientColor(),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 3),
                WelcomeText(),
                SizedBox(height: 5),
                Greenbutton(
                  text: "Get Started",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
