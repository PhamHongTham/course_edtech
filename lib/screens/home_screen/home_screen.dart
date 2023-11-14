import 'package:course_edtech/components/textformfield/text_form_field.dart';
import 'package:course_edtech/gen/assets.gen.dart';
import 'package:course_edtech/res/app_color.dart';
import 'package:course_edtech/res/app_style.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    User? user = _auth.currentUser;
    return Scaffold(
      body: SafeArea(
        // child: Center(
        //   child: Text(user!.email.toString()),
        // ),
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hello, ',
                          style: AppStyle.f14_w400_h3C3A36,
                        ),
                        const SizedBox(height: 4.0),
                        Text(
                          user!.email.toString(),
                          style: AppStyle.f32_w400_h3C3A36,
                        )
                      ],
                    ),
                    const Spacer(),
                    SvgPicture.asset(Assets.icons.notifi)
                  ],
                ),
                const SizedBox(height: 12.0),
                TextFormField(
                  style: AppStyle.f14_w400_h78746D,
                  decoration: InputDecoration(
                    hintText: 'Search course',
                    hintStyle: AppStyle.f14_w400_h78746D,
                    suffixIcon: Image.asset(
                      Assets.images.search.path,
                      color: AppColor.h3C3A36,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: AppColor.h78746D),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    contentPadding: const EdgeInsetsDirectional.all(16.0),
                    // border: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(12.0),
                    // ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: AppColor.h78746D),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
