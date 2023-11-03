// ignore_for_file: unused_import, unnecessary_import, unused_element

import 'package:course_edtech/components/buttons/custom_button.dart';
import 'package:course_edtech/components/page_index/custom_page_index.dart';
import 'package:course_edtech/gen/assets.gen.dart';
import 'package:course_edtech/gen/fonts.gen.dart';
import 'package:course_edtech/models/intro_model.dart';
import 'package:course_edtech/res/app_color.dart';
import 'package:course_edtech/res/app_style.dart';
import 'package:course_edtech/screens/login_signup_forgot_password/login_screen.dart';
import 'package:course_edtech/screens/splash_screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  int current = 0;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.hFFFFFF,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17.0, vertical: 16.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        )),
                    child:
                        const Text('Skip', style: AppStyle.f14_w500_h78746D)),
              ),
              const SizedBox(height: 112.0),
              // Expanded(
              //   child: PageView.builder(
              //     onPageChanged: (value) {
              //       setState(
              //         () {
              //           current = value;
              //         },
              //       );
              //     },
              //     itemCount: listIntroModels.length,
              //     itemBuilder: (context, index) {
              //       return Image.asset(listIntroModels[index].image ?? '');
              //     },
              //   ),
              // ),
              _pageImage(width: width, height: height),
              const SizedBox(height: 16.0),
              Text(
                  textAlign: TextAlign.center,
                  // '${current == 0 ? listIntroModels[current].title : current == 1 ? listIntroModels[current].title : listIntroModels[current].title}',
                  "${listIntroModels[current].title}",
                  style: AppStyle.f24_w500_h3C3A36),
              const SizedBox(height: 8.0),
              Text(
                  textAlign: TextAlign.center,
                  "${listIntroModels[current].subTitle}",
                  style: AppStyle.f14_w400_h3C3A36),
              const SizedBox(height: 16.0),
              CustomPageIndex(
                  indexPage: current, itemCount: listIntroModels.length),
              // SizedBox(
              //   height: 6.0,
              //   child: ListView.separated(
              //     shrinkWrap: true,
              //     scrollDirection: Axis.horizontal,
              //     itemCount: listIntroModels.length,
              //     itemBuilder: (context, index) {
              //       return Container(
              //         width: current == index ? 16 : 6.0,
              //         height: 6.0,
              //         decoration: BoxDecoration(
              //           color: current == index
              //               ? AppColor.h65AAEA
              //               : AppColor.hD5D4D4,
              //           borderRadius: BorderRadius.circular(6),
              //         ),
              //       );
              //     },
              //     separatorBuilder: (context, index) =>
              //         const SizedBox(width: 12.0),
              //   ),
              // ),
              const SizedBox(height: 72.0),
              CustomButton(
                onpressed: () {
                  setState(() {
                    current == 2
                        ? Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ))
                        : pageController.nextPage(
                            curve: Curves.linear,
                            duration: const Duration(milliseconds: 100));
                  });
                },
                textButton: listIntroModels[current].textButton ?? '',
              )
              // GestureDetector(
              //   onTap: () {

              //   },
              //   child: Container(
              //     alignment: Alignment.center,
              //     width: double.infinity,
              //     padding:
              //         const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
              //     decoration: BoxDecoration(
              //         color: AppColor.primaryColor,
              //         borderRadius: BorderRadius.circular(16.0)),
              //     child: const Text(
              //       'Next',
              //       // textAlign: TextAlign.center,
              //       style: TextStyle(
              //           color: AppColor.hFFFFFF,
              //           fontFamily: FontFamily.rubik,
              //           fontSize: 16.0,
              //           fontWeight: FontWeight.w500),
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }

  Widget _pageImage({double? width, double? height}) {
    return Expanded(
      child: PageView.builder(
        controller: pageController,
        onPageChanged: (value) {
          setState(
            () {
              current = value;
            },
          );
        },
        itemCount: listIntroModels.length,
        itemBuilder: (context, index) {
          return Image.asset(
            listIntroModels[index].image ?? '',
            width: width,
            height: 264 / 812 * height!,
          );
        },
      ),
    );
  }
}
