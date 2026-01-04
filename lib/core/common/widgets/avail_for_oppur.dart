import 'package:flutter/material.dart';
import 'package:portfolio/core/common/app_colours/app_colors.dart';
import 'package:portfolio/core/common/app_images/app_images.dart';

class AvailForOppur extends StatelessWidget {
  final double width;
  final double imageheight;
  final double imageWidth;
  final double textSize;
  final double padding;

  const AvailForOppur({
    super.key,
    this.width = 0.65,
    this.imageheight = 0.03,
    this.imageWidth = 0.05,
    this.textSize = 0.03,
    this.padding = 0.05,
  });

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    final double h = MediaQuery.of(context).size.height;
    return Container(
      width: w * width,
      decoration: BoxDecoration(
        color: AppColors.whiteColor.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(20),
      ),

      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: h * 0.01,
          horizontal: w * padding,
        ),
        child: Row(
          spacing: w * 0.02,
          children: [
            Image.asset(
              AppImages.starIcon,
              height: h * imageheight,
              width: w * imageWidth,
            ),
            Text(
              'AVAILABLE FOR OPPERTUNITIES',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: AppColors.whiteColor,
                fontSize: w * textSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
