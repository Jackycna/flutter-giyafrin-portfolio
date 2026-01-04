import 'package:flutter/material.dart';
import 'package:portfolio/core/common/app_colours/app_colors.dart';

class CommonElevatedButton extends StatelessWidget {
  final Color textColor;
  final Color backgroundColor;
  final VoidCallback onpressed;
  final String text;
  final double borderWidth;
  final Color? borderColor;
  final double verticalpad;
  final double horipad;
  final double textsize;

  const CommonElevatedButton({
    super.key,
    this.textColor = AppColors.blackColor,
    this.backgroundColor = AppColors.whiteColor,
    required this.onpressed,
    required this.text,
    this.borderColor,
    this.borderWidth = 1,
    this.verticalpad = 5,
    this.horipad = 10,
    this.textsize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        side: WidgetStateProperty.all<BorderSide>(
          BorderSide(
            width: borderWidth,
            color: borderColor ?? AppColors.whiteColor.withValues(alpha: 0.0),
          ),
        ),
        overlayColor: WidgetStateProperty.all<Color>(
          AppColors.whiteColor.withValues(alpha: 0.2),
        ),
        elevation: WidgetStateProperty.all<double>(0),
        backgroundColor: WidgetStateProperty.all<Color>(backgroundColor),

        mouseCursor: WidgetStateProperty.all<MouseCursor>(MouseCursor.defer),
      ),
      onPressed: onpressed,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: verticalpad,
          horizontal: horipad,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: textsize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
