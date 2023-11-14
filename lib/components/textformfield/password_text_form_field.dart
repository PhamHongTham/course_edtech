// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:course_edtech/res/app_color.dart';
import 'package:course_edtech/res/app_style.dart';
import 'package:course_edtech/utils/validator.dart';

class CustomPasswordInput extends StatefulWidget {
  const CustomPasswordInput({
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
  State<CustomPasswordInput> createState() => _CustomPasswordInputState();
}

class _CustomPasswordInputState extends State<CustomPasswordInput> {
  bool isCheck = true;
  bool isHiden = true;
  String? _errorPassword;
  @override
  Widget build(BuildContext context) {
    print(isHiden);
    return TextFormField(
      onChanged: (value) {
        print(value);
        if (value.isEmpty) {
          isHiden = true;
          setState(() {});
        } else {
          isHiden = false;
          setState(() {});
        }
      },
      obscureText: isCheck,
      validator: widget.validator,
      controller: widget.controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textInputAction: widget.textInputAction,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        errorText: _errorPassword,
        suffixIcon: isHiden
            ? null
            : GestureDetector(
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
                child: Icon(isCheck ? Icons.visibility : Icons.visibility_off)),
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
