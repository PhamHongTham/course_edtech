// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:course_edtech/res/app_color.dart';
import 'package:course_edtech/res/app_style.dart';

class CustomFormInput extends StatelessWidget {
  const CustomFormInput({
    Key? key,
    this.controller,
    this.textInputAction = TextInputAction.next,
    this.keyboardType = TextInputType.text,
    this.hintText,
  }) : super(key: key);
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColor.h78746D),
          borderRadius: BorderRadius.circular(12.0),
        ),
        contentPadding: const EdgeInsetsDirectional.all(16.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColor.primaryColor),
          borderRadius: BorderRadius.circular(12.0),
        ),
        hintText: hintText,
        hintStyle: AppStyle.f14_w400_h78746D,
      ),
    );
  }
}
