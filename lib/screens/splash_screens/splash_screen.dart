// ignore_for_file: prefer_const_constructors
import 'package:course_edtech/gen/assets.gen.dart';
import 'package:course_edtech/res/app_color.dart';
import 'package:course_edtech/res/app_style.dart';
import 'package:course_edtech/routers/app_routers.dart';
import 'package:course_edtech/screens/intro_screens/intro_screen.dart';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => IntroScreen(),
          ),
          (route) => false,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.hFFFFFF,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SvgPicture.asset(
            //   Assets.images.polaroidSvgrepoCom,
            //   width: 200,
            // ),
            Image.asset(Assets.images.splash.path),
            const Text(
              'CodeFactory',
              style: AppStyle.f40_w700_h3C3A36,
            ),
          ],
        ),
      ),
    );
  }
}
