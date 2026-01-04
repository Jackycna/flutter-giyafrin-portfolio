import 'package:flutter/material.dart';
import 'package:portfolio/core/common/app_colours/app_colors.dart';

class ParaghText extends StatelessWidget {
  final String text;
  final double textsize;
  final TextAlign textAlign;
  const ParaghText({
    super.key,
    required this.text,
    this.textsize = 0.025,
    this.textAlign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    return Text(
      text,
      style: TextStyle(color: AppColors.whiteColor, fontSize: w * textsize),
      textAlign: textAlign,
    );
  }
}
