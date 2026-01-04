import 'package:flutter/material.dart';
import 'package:portfolio/core/common/textStyles/primary_describtion.dart';
import 'package:portfolio/core/common/textStyles/side_heading_text.dart';
import 'package:portfolio/core/common/widgets/animation_widgets.dart/slide_transition_animation.dart';

class ServiceScreenMob extends StatelessWidget {
  const ServiceScreenMob({super.key});

  @override
  Widget build(BuildContext context) {
    final double h = MediaQuery.of(context).size.height;
    final double w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: w * 0.07),
      child: Column(
        spacing: h * 0.01,
        children: [
          SizedBox(height: h * 0.1),
          SlideTransitionAnimation(
            uniqueKey: const Key('services-mob-1'),
            child: SideHeadingText(text: 'SERVICES'),
          ),
          SlideTransitionAnimation(
            uniqueKey: const Key('services-mob-2'),
            child: PrimaryDescribtion(text: 'My Specialities'),
          ),
          SizedBox(height: h * 0.03),
        ],
      ),
    );
  }
}
