import 'package:flutter/material.dart';
import 'package:task_project11/widgets/containers/greenbutton.dart';
import 'package:task_project11/widgets/subtitles.dart';

class Registerscreen extends StatelessWidget {
  const Registerscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15),
                Center(child: Image.asset("assets/images/Group.png")),
                SizedBox(height: 100),
                Text(
                  "Sing Up",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight(600)),
                ),
                SizedBox(height: 15),
                Text(
                  "Enter your credentials to continue",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight(400),
                    color: Color(0xff7C7C7C),
                  ),
                ),
                SizedBox(height: 40),
                Subtitles(title: "User name"),
                TextFormField(),
                SizedBox(height: 30),
                Subtitles(title: "Email"),
                TextFormField(),
                SizedBox(height: 30),
                Subtitles(title: "password"),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(suffix: Icon(Icons.visibility)),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text("By continuing you agree to our "),
                    Text(
                      "Terms of Service",
                      style: TextStyle(color: Color(0xff53B175)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(" and"),
                    Text(
                      " Privacy Policy.",
                      style: TextStyle(color: Color(0xff53B175)),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Greenbutton(text: "Sing Up"),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight(600),
                      ),
                    ),
                    Text(
                      "Singup",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight(600),
                        color: Color(0xff53B175),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 36.5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
