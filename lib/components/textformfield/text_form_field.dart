// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:course_edtech/utils/validator.dart';
import 'package:flutter/material.dart';

import 'package:course_edtech/res/app_color.dart';
import 'package:course_edtech/res/app_style.dart';

class CustomFormInput extends StatefulWidget {
  const CustomFormInput({
    Key? key,
    this.controller,
    this.textInputAction = TextInputAction.next,
    this.keyboardType = TextInputType.text,
    this.hintText,
    this.validator,
  }) : super(key: key);
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final String? hintText;
  final String? Function(String?)? validator;

  @override
  State<CustomFormInput> createState() => _CustomFormInputState();
}

class _CustomFormInputState extends State<CustomFormInput> {
  bool isCheck = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) {
        // ignore: unnecessary_null_comparison, unrelated_type_equality_checks
        if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
          isCheck = true;
          setState(() {});
        } else {
          isCheck = false;
          setState(() {});
        }
      },
      validator: widget.validator,
      controller: widget.controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textInputAction: widget.textInputAction,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        suffixIcon: Icon(
          isCheck == false ? Icons.check : null,
          color: AppColor.h5BA092,
        ),
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
