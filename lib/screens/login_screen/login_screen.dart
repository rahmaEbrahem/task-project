import 'package:flutter/material.dart';
import 'package:task_project11/screens/home_screen/home_screen.dart';
import 'package:task_project11/screens/register_screen/registerscreen.dart';
import 'package:task_project11/core/customer_widgets/containers/greenbutton.dart';
import 'package:task_project11/screens/login_screen/widget/subtitles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15),
              Center(child: Image.asset("assets/images/Group.png")),
              SizedBox(height: 100),
              Text(
                "Loging",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 15),
              Text(
                "Enter your emails and password",
                style: TextStyle(fontSize: 16, color: Color(0xff7C7C7C)),
              ),
              SizedBox(height: 40),
              Subtitles(title: 'Email'),
              TextFormField(),
              SizedBox(height: 30),
              Subtitles(title: "Password"),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(suffix: Icon(Icons.visibility)),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.bottomRight,
                child: Text("Forgot password?"),
              ),
              SizedBox(height: 30),
              Greenbutton(
                text: "Login",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account?",
                    style: TextStyle(fontWeight: FontWeight(600), fontSize: 14),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Registerscreen(),
                        ),
                      );
                    },

                    child: Text(
                      "Singup",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight(600),
                        color: Color(0xff53B175),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
