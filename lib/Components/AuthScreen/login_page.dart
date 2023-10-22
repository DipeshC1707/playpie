import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playpie/Components/AuthScreen/signup-page.dart';
import 'package:playpie/Components/Homescreen/home_page.dart';
// import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:playpie/WIdgets/bgwidget.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:glass_kit/glass_kit.dart';

import '../../consts/images.dart';
import '../../consts/styles.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height:context.height ,
        width: context.width,
        decoration: const BoxDecoration(gradient:LinearGradient(colors: [Color.fromARGB(255, 21, 181, 176),Color.fromARGB(255, 4, 36, 35),Color.fromARGB(255, 4, 36, 35),Color.fromARGB(255, 21, 181, 176) ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter
        ) ),
        child: Center(
            child: SingleChildScrollView(
          child: Column(
            children: [
              // (context.screenHeight * 0.1).heightBox,
              // "Login With Us".text.white.fontFamily(bold).size(20).make().box.height(50).width(context.screenWidth * 0.75).alignment(Alignment.center).color(Colors.grey.shade900).rounded.make(),
              GlassContainer.clearGlass(
                height: context.screenHeight * 0.7,
                width: context.screenWidth * 0.9,
                borderColor: Colors.transparent,
                padding: const EdgeInsets.all(20),
                borderRadius: BorderRadius.circular(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    10.heightBox,
                    Center(
                      child: RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                            text: "Login with",
                            style: TextStyle(
                                fontSize: 25,
                                fontFamily: bold,
                                color: Colors.white)),
                        TextSpan(
                            text: " PlayPie",
                            style: TextStyle(
                                fontSize: 25,
                                fontFamily: italicbold,
                                color: Colors.white)),
                      ])),
                    ),
                    20.heightBox,
                    "Email".text.white.size(20).fontFamily(demibold).make(),
                    10.heightBox,
                    const TextField(
                      obscureText: false,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: demibold,
                          fontWeight: FontWeight.w100),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          // enabledBorder: UnderlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.blueAccent)),
                          floatingLabelStyle: TextStyle(
                              color: Colors.blueAccent, fontFamily: demibold),
                          labelText: 'Enter Email',
                          labelStyle: TextStyle(
                              color: Colors.white38, fontFamily: demibold)),
                    ),
                    20.heightBox,
                    "Password"
                        .text
                        .size(20)
                        .white
                        .fontFamily(demibold)
                        .make(),
                    10.heightBox,
                    const TextField(
                      obscureText: true,
                      style: TextStyle(
                          color: Colors.white, fontFamily: demibold),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          // enabledBorder: UnderlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.blueAccent)),
                          floatingLabelStyle: TextStyle(
                              color: Colors.blueAccent, fontFamily: demibold),
                          labelText: 'Enter Password',
                          labelStyle: TextStyle(
                              color: Colors.white38, fontFamily: demibold)),
                    ),
                    20.heightBox,
                    Center(
                      child: SizedBox(
                        width: context.screenWidth * 0.5,
                        child: ElevatedButton(
                            onPressed: () {
                              Get.to(const Homescreen());
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueAccent),
                            child: const Text(
                              "Log In",
                              style: TextStyle(
                                  color: Colors.black, fontFamily: demibold),
                            )),
                      ),
                    ),
                    20.heightBox,
                    Row(
                      children: [
                        const Text(
                          'Don’t have an account?',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: regular,
                          ),
                        ),
                        const SizedBox(
                          width: 2.5,
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(const SignupPage(),
                                transition: Transition.leftToRightWithFade);
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontFamily: demibold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        'Forget Password?',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontFamily: demibold,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
