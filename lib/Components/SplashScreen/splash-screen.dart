import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playpie/Components/AuthScreen/login_page.dart';
import 'package:playpie/consts/images.dart';
import 'package:playpie/consts/styles.dart';
import 'package:velocity_x/velocity_x.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      // Get.to(const LoginScreen()););
      Get.to(const LoginPage(),
          duration: const Duration(milliseconds: 1000),
          transition: Transition.native);
    });
  }

//   Image ? bgImg;
  @override
  void initState() {
    super.initState();
    // bgImg = Image.asset(bg,width: context.screenWidth,height: context.screenHeight,fit: BoxFit.cover,);
    changeScreen();
  }

//   @override
// void didChangeDependencies() {
//   super.didChangeDependencies();
//   precacheImage(bgImg!.image, context);

// }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.3).heightBox,
            Image.asset(logo).box.size(175, 175).make(),
            "Record and Hustle".text.white.size(18).fontFamily(demibold).make(),
            20.heightBox,
            "version^0.0.1".text.white.fontFamily(regular).make()
          ],
        ),
      ),
    );
  }
}
