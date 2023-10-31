import 'package:course_edtech/gen/assets.gen.dart';
import 'package:course_edtech/gen/fonts.gen.dart';
import 'package:course_edtech/res/app_color.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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
              style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w100,
                  fontFamily: FontFamily.rubik,
                  color: AppColor.h3C3A36,
                  letterSpacing: -1),
            ),
          ],
        ),
      ),
    );
  }
}
