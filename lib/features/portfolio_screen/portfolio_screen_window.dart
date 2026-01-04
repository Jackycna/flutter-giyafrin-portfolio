import 'package:flutter/material.dart';
import 'package:portfolio/core/common/textStyles/primary_describtion.dart';
import 'package:portfolio/core/common/textStyles/side_heading_text.dart';
import 'package:portfolio/core/common/widgets/animation_widgets.dart/slide_transition_animation.dart';

class PortfolioScreenWindow extends StatelessWidget {
  const PortfolioScreenWindow({super.key});

  @override
  Widget build(BuildContext context) {
    final double h = MediaQuery.of(context).size.height;
    final double w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: w * 0.12),
      child: Column(
        spacing: h * 0.01,
        crossAxisAlignment: .center,
        children: [
          SizedBox(height: h * 0.05),
          SlideTransitionAnimation(
            uniqueKey: const Key('portfolio-web-1'),
            child: SideHeadingText(text: 'PORTFOLIO', textSize: 0.03),
          ),
          SlideTransitionAnimation(
            uniqueKey: const Key('portfolio-web-2'),
            child: PrimaryDescribtion(
              text: 'Projects that reflect my expertise and vision',
              textsize: 0.03,
            ),
          ),
          SizedBox(height: h * 0.05),
        ],
      ),
    );
  }
}
