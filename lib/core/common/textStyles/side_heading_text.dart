import 'package:flutter/material.dart';
import 'package:portfolio/core/common/app_colours/app_colors.dart';

class SideHeadingText extends StatelessWidget {
  final String text;
  final TextDecoration textDecoration;
  final double textSize;
  const SideHeadingText({
    super.key,
    required this.text,
    this.textSize = 0.04,
    this.textDecoration = TextDecoration.none,
  });

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    return Text(
      text,
      style: TextStyle(
        color: AppColors.primaryColor,
        fontFamily: 'cribo',
        fontSize: w * textSize,
        decoration: textDecoration,
        decorationColor: AppColors.primaryColor,
      ),
    );
  }
}
