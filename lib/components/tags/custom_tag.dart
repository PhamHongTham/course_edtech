import 'package:course_edtech/res/app_color.dart';
import 'package:flutter/material.dart';

class Customtag extends StatelessWidget {
  const Customtag({
    super.key,
    required this.textSymbol,
    required this.textTitle,
  });
  final String? textSymbol;
  final String? textTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 11.0, vertical: 3.0),
      decoration: BoxDecoration(
        color: AppColor.h65AAEA,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(text: textSymbol),
            TextSpan(text: textTitle),
          ],
        ),
      ),
    );
  }
}
