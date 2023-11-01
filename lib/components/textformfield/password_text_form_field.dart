// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:course_edtech/gen/assets.gen.dart';
import 'package:flutter/material.dart';

import 'package:course_edtech/res/app_color.dart';
import 'package:course_edtech/res/app_style.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomPasswordInput extends StatefulWidget {
  const CustomPasswordInput({
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
  State<CustomPasswordInput> createState() => _CustomPasswordInputState();
}

class _CustomPasswordInputState extends State<CustomPasswordInput> {
  bool isCheck = true;

  @override
  Widget build(BuildContext context) {
    print(isCheck);
    return TextFormField(
      obscureText: isCheck,
      controller: widget.controller,
      textInputAction: widget.textInputAction,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        suffixIcon: GestureDetector(
            onTap: () {
              setState(
                () {
                  isCheck = !isCheck;
                  // if (!isCheck) {
                  //   isCheck = true;
                  // } else {
                  //   isCheck = false;
                  // }
                },
              );
            },
            child: Image.asset(
              isCheck ? Assets.icons.eye1.path : Assets.icons.eye2.path,
            )),
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
        hintText: widget.hintText,
        hintStyle: AppStyle.f14_w400_h78746D,
      ),
    );
  }
}
