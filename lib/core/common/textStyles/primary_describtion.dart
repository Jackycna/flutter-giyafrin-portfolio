import 'package:flutter/material.dart';
import 'package:portfolio/core/common/app_colours/app_colors.dart';

class PrimaryDescribtion extends StatelessWidget {
  final String text;
  final double textsize;
  final TextAlign textAlign;
  const PrimaryDescribtion({
    super.key,
    required this.text,
    this.textsize = 0.06,
    this.textAlign = TextAlign.center,
  });

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    return Text(
      text,
      style: TextStyle(
        fontSize: w * textsize,
        color: AppColors.whiteColor,
        fontWeight: FontWeight.w700,
      ),
      textAlign: textAlign,
    );
  }
}
