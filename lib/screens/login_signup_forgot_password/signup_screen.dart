// ignore_for_file: use_build_context_synchronously

import 'package:course_edtech/components/buttons/custom_button.dart';
import 'package:course_edtech/components/dialog/dialog_custom.dart';
import 'package:course_edtech/components/textformfield/password_text_form_field.dart';
import 'package:course_edtech/components/textformfield/text_form_field.dart';
import 'package:course_edtech/firebase/firebase_authen_service.dart';
import 'package:course_edtech/gen/assets.gen.dart';
import 'package:course_edtech/res/app_color.dart';
import 'package:course_edtech/res/app_style.dart';
import 'package:course_edtech/screens/login_signup_forgot_password/login_screen.dart';
import 'package:course_edtech/utils/validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
  final _formKey = GlobalKey<FormState>();
  void _signUp() async {
    User? user = await _firebaseAuthenService.signUp(
        _emailController.text.trim(), _passwordController.text);

    if (user != null) {
      // ignore: use_build_context_synchronously
      showCustomDialog(context,
          title: 'Thành công',
          content: 'Bạn đã đăng ký thành công',
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(
                        email: _emailController.text.trim(),
                        password: _passwordController.text),
                  ),
                  (route) => false,
                );
              },
              child: Text('OK'),
            )
          ]);
    } else {
      showCustomDialog(context,
          title: 'Thất bại',
          content: 'Email đã tồn tại trong hệ thống',
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            )
          ]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.hFFFFFF,
      body: SafeArea(
        child: Form(
          key: _formKey,
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
                  validator: (p0) => Validator.checkEmailInValid(p0)),
              const SizedBox(height: 16.0),
              CustomPasswordInput(
                controller: _passwordController,
                hintText: 'Password',
                keyboardType: TextInputType.text,
                validator: (p0) => Validator.checkPassword(p0),
              ),
              const SizedBox(height: 16.0),
              CustomPasswordInput(
                controller: _confirmPassController,
                hintText: 'Confirm Password',
                textInputAction: TextInputAction.done,
                validator: (p0) =>
                    Validator.confirmPassword(p0, _passwordController.text),
              ),
              const SizedBox(height: 16.0),
              CustomButton(
                onpressed: _signUp,
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
      ),
    );
  }
}

//   void checkEmail(p0) {
//     if (p0.contains('@') || p0.isEmpty || p0 == '') {
//       _errorEmail = null;
//       setState(() {});
//     } else {
//       _errorEmail = 'Vui long nhap dung dinh dang email';
//       setState(() {});
//     }
//   }
// }
