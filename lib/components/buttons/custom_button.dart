// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:course_edtech/res/app_style.dart';
import 'package:flutter/material.dart';

import 'package:course_edtech/gen/fonts.gen.dart';
import 'package:course_edtech/res/app_color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.onpressed,
    this.backgroundColor = AppColor.primaryColor,
    this.textColor = AppColor.hFFFFFF,
    required this.textButton,
    this.textStyle = AppStyle.f16_w500_hFFFFFF,
  }) : super(key: key);
  final Function() onpressed;
  final Color? backgroundColor;
  final Color? textColor;
  final String textButton;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(16.0)),
        child: Text(
          textButton,
          // textAlign: TextAlign.center,
          style: textStyle,
        ),
      ),
    );
  }
}
