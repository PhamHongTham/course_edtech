// ignore_for_file: public_member_api_docs, sort_constructors_first, use_build_context_synchronously
import 'package:course_edtech/components/dialog/dialog_custom.dart';
import 'package:course_edtech/firebase/firebase_authen_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:course_edtech/components/buttons/custom_button.dart';
import 'package:course_edtech/components/textformfield/password_text_form_field.dart';
import 'package:course_edtech/components/textformfield/text_form_field.dart';
import 'package:course_edtech/gen/assets.gen.dart';
import 'package:course_edtech/res/app_color.dart';
import 'package:course_edtech/res/app_style.dart';
import 'package:course_edtech/screens/home_screen/home_screen.dart';
import 'package:course_edtech/screens/login_signup_forgot_password/forgot_password.dart';
import 'package:course_edtech/screens/login_signup_forgot_password/signup_screen.dart';
import 'package:course_edtech/utils/validator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    Key? key,
    this.email,
    this.password,
  }) : super(key: key);
  final String? email;
  final String? password;
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final FirebaseAuthenService _firebaseAuthenService = FirebaseAuthenService();
  final TextEditingController emailEditingController = TextEditingController();
  final TextEditingController passWordEditingController =
      TextEditingController();

  final _formKey = GlobalKey<FormState>();
  void _logIn() async {
    User? user = await _firebaseAuthenService.signIn(
        emailEditingController.text.trim(), passWordEditingController.text);
    if (user != null) {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
        (route) => false,
      );
    } else {
      showCustomDialog(context,
          title: 'Thất bại',
          content: 'Tên đăng nhập và mật khẩu không đúng',
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
  void initState() {
    // TODO: implement initState
    super.initState();
    emailEditingController.text = widget.email ?? '';
    passWordEditingController.text = widget.password ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16.0).copyWith(
                top: MediaQuery.of(context).padding.top + 52.0, bottom: 16.0),
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
              CustomFormInput(
                hintText: 'Email',
                controller: emailEditingController,
                validator: (p0) => Validator.checkIsEmpty(p0),
              ),
              const SizedBox(height: 16.0),
              CustomPasswordInput(
                hintText: 'Password',
                controller: passWordEditingController,
                textInputAction: TextInputAction.done,
                validator: (p0) => Validator.checkIsEmpty(p0),
                // validator: (p0) => Validator.checkPassword(p0),
              ),
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
              const SizedBox(height: 16.0),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ForgotPassword(),
                  ),
                ),
                child: const Text(
                  'Forgot Password?',
                  style: AppStyle.f14_w500_h78746D,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 16.0),
              CustomButton(
                onpressed: _logIn,
                // onpressed: () {
                //   if (emailEditingController.text.trim() == 'a@gmail.com' &&
                //       passWordEditingController.text.trim() == '1234567') {
                //     Navigator.of(context).push(MaterialPageRoute(
                //       builder: (context) => const HomeScreen(),
                //     ));
                //   } else {
                //     showDialog(
                //       context: context,
                //       builder: (context) {
                //         return AlertDialog(
                //           title: const Text('Lỗi'),
                //           content: const Text(
                //               'Tên đăng nhập và mật khẩu không đúng'),
                //           actions: [
                //             TextButton(
                //               onPressed: () => Navigator.of(context).pop(),
                //               child: const Text('Đóng'),
                //             )
                //           ],
                //         );
                //       },
                //     );
                //   }
                //   // Navigator.of(context).push(MaterialPageRoute(
                //   //   builder: (context) => HomeScreen(),
                //   // ));
                // },
                textButton: 'Login',
              ),

              CustomButton(
                backgroundColor: Colors.transparent,
                onpressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SignUpScreen(),
                  ));
                },
                textButton: 'SignUp',
                textColor: AppColor.h78746D,
                textStyle: AppStyle.f14_w500_h78746D,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
