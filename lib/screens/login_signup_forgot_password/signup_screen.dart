import 'package:course_edtech/components/buttons/custom_button.dart';
import 'package:course_edtech/components/textformfield/password_text_form_field.dart';
import 'package:course_edtech/components/textformfield/text_form_field.dart';
import 'package:course_edtech/firebase/firebase_authen_service.dart';
import 'package:course_edtech/gen/assets.gen.dart';
import 'package:course_edtech/res/app_color.dart';
import 'package:course_edtech/res/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final FirebaseAuthenService _firebaseAuthenService = FirebaseAuthenService();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPassController = TextEditingController();
  String? _errorEmail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.hFFFFFF,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 15.0)
              .copyWith(top: MediaQuery.of(context).padding.top + 16.0),
          children: [
            GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: SvgPicture.asset(Assets.icons.back,
                    alignment: Alignment.topLeft)),
            Image.asset(Assets.images.signup.path),
            const SizedBox(height: 16.0),
            const Text(
              'Sign up',
              style: AppStyle.f24_w500_h3C3A36,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Create your account',
              style: AppStyle.f14_w400_h78746D,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16.0),
            CustomFormInput(
                controller: _emailController,
                hintText: 'E-mail',
                keyboardType: TextInputType.emailAddress,
                errorText: _errorEmail,
                onChanged: checkEmail),
            const SizedBox(height: 16.0),
            CustomPasswordInput(
              controller: _passwordController,
              hintText: 'Password',
              keyboardType: TextInputType.text,
            ),
            const SizedBox(height: 16.0),
            CustomPasswordInput(
                controller: _confirmPassController,
                hintText: 'Confirm Password',
                textInputAction: TextInputAction.done),
            const SizedBox(height: 16.0),
            CustomButton(
              onpressed: () {
                _firebaseAuthenService.signUp(_emailController.text.trim(),
                    _confirmPassController.text.trim());
              },
              textButton: 'Sign up',
            ),
            const SizedBox(height: 16.0),
            CustomButton(
              backgroundColor: Colors.transparent,
              onpressed: () {},
              textButton: 'Login',
              textColor: AppColor.h78746D,
              textStyle: AppStyle.f14_w500_h78746D,
            )
          ],
        ),
      ),
    );
  }

  void checkEmail(p0) {
    if (p0.contains('@') || p0.isEmpty || p0 == '') {
      _errorEmail = null;
      setState(() {});
    } else {
      _errorEmail = 'Vui long nhap dung dinh dang email';
      setState(() {});
    }
  }
}
