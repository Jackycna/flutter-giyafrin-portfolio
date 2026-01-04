import 'package:flutter/material.dart';
import 'package:portfolio/core/common/app_colours/app_colors.dart';
import 'package:portfolio/core/common/app_images/app_images.dart';

class NameWidget extends StatelessWidget {
  final double textSize;
  final double height;
  final double width;
  const NameWidget({
    super.key,
    this.textSize = 0.05,
    this.height = 0.07,
    this.width = 0.05,
  });

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    final double h = MediaQuery.of(context).size.height;
    return Row(
      spacing: 10,
      children: [
        Image.asset(AppImages.starIcon, height: h * height, width: w * width),
        Text(
          'Giyafrin.',
          style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: w * textSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
