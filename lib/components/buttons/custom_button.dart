import 'package:course_edtech/gen/fonts.gen.dart';
import 'package:course_edtech/res/app_color.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onpressed,
    this.backgroundColor = AppColor.primaryColor,
    this.textColor = AppColor.hFFFFFF,
    required this.textButton,
  });
  final Function() onpressed;
  final Color? backgroundColor;
  final Color? textColor;
  final String textButton;

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
          style: TextStyle(
              color: textColor,
              fontFamily: FontFamily.rubik,
              fontSize: 16.0,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
