import 'package:course_edtech/gen/assets.gen.dart';
import 'package:course_edtech/res/app_color.dart';
import 'package:course_edtech/res/app_style.dart';
import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({
    super.key,
    required this.hintText,
    required this.hintStyle,
  });
  final String? hintText;
  final TextStyle? hintStyle;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: AppStyle.f14_w400_h78746D,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: hintStyle,
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
    );
  }
}
