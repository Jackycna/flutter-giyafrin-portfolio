import 'package:flutter/material.dart';
import 'package:portfolio/core/common/textStyles/primary_describtion.dart';
import 'package:portfolio/core/common/textStyles/side_heading_text.dart';
import 'package:portfolio/core/common/widgets/animation_widgets.dart/slide_transition_animation.dart';

class ServiceScreenTab extends StatelessWidget {
  const ServiceScreenTab({super.key});

  @override
  Widget build(BuildContext context) {
    final double h = MediaQuery.of(context).size.height;
    final double w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: w * 0.1),
      child: Column(
        spacing: h * 0.01,
        children: [
          SizedBox(height: h * 0.05),
          SlideTransitionAnimation(
            uniqueKey: const Key('service-tap-1'),
            child: SideHeadingText(text: 'SERVICES', textSize: 0.03),
          ),
          SlideTransitionAnimation(
            uniqueKey: const Key('service-tap-2'),
            child: PrimaryDescribtion(text: 'My Specialities', textsize: 0.025),
          ),
          SizedBox(height: h * 0.05),
        ],
      ),
    );
  }
}
