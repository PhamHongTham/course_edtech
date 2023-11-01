import 'package:course_edtech/components/textformfield/password_text_form_field.dart';
import 'package:course_edtech/components/textformfield/text_form_field.dart';
import 'package:course_edtech/gen/assets.gen.dart';
import 'package:course_edtech/res/app_color.dart';
import 'package:course_edtech/res/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0)
            .copyWith(top: MediaQuery.of(context).padding.top + 52.0),
        children: [
          Image.asset(Assets.images.login.path),
          const SizedBox(height: 8.0),
          const Text(
              textAlign: TextAlign.center,
              'Log in',
              style: AppStyle.f24_w500_h3C3A36),
          const Text(
              textAlign: TextAlign.center,
              'Login with social networks',
              style: AppStyle.f14_w400_h3C3A36),
          const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(Assets.icons.face),
              const SizedBox(width: 12.0),
              SvgPicture.asset(Assets.icons.igSvg),
              const SizedBox(width: 12.0),
              SvgPicture.asset(Assets.icons.ggSvg),
            ],
          ),
          const SizedBox(height: 16.0),
          const CustomFormInput(hintText: 'Email'),
          const SizedBox(height: 16.0),
          const CustomPasswordInput(hintText: 'Password'),
          // TextFormField(
          //   decoration: InputDecoration(
          //     enabledBorder: OutlineInputBorder(
          //       borderSide: const BorderSide(color: AppColor.h78746D),
          //       borderRadius: BorderRadius.circular(12.0),
          //     ),
          //     contentPadding: const EdgeInsetsDirectional.all(16.0),
          //     border: OutlineInputBorder(
          //       borderRadius: BorderRadius.circular(12.0),
          //     ),
          //     hintText: 'Email',
          //     hintStyle: AppStyle.f14_w400_h78746D,
          //   ),
          // )
        ],
      ),
    );
  }
}
