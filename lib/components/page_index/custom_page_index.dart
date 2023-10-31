import 'package:course_edtech/res/app_color.dart';
import 'package:flutter/material.dart';

class CustomPageIndex extends StatelessWidget {
  const CustomPageIndex({
    super.key,
    required this.indexPage,
    required this.itemCount,
    this.activeColor = AppColor.h65AAEA,
    this.notActiveColor = AppColor.hD5D4D4,
  });
  final int indexPage;
  final int itemCount;
  final Color? activeColor;
  final Color? notActiveColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 6.0,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return Container(
            width: indexPage == index ? 16 : 6.0,
            height: 6.0,
            decoration: BoxDecoration(
              color: indexPage == index ? activeColor : notActiveColor,
              borderRadius: BorderRadius.circular(6),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 12.0),
      ),
    );
  }
}
