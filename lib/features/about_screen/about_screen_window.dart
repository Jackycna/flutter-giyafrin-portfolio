import 'package:flutter/material.dart';
import 'package:portfolio/core/common/app_colours/app_colors.dart';
import 'package:portfolio/core/common/app_images/app_images.dart';
import 'package:portfolio/core/common/textStyles/paragh_text.dart';
import 'package:portfolio/core/common/textStyles/primary_describtion.dart';
import 'package:portfolio/core/common/textStyles/side_heading_text.dart';
import 'package:portfolio/core/common/widgets/animation_widgets.dart/slide_transition_animation.dart';
import 'package:portfolio/core/common/widgets/animation_widgets.dart/transform_scale_widget.dart';
import 'package:portfolio/features/about_screen/data_source/about_screen_text.dart';

class AboutScreenWindow extends StatelessWidget {
  const AboutScreenWindow({super.key});

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    final double h = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: w * 0.12),
      child: Column(
        spacing: h * 0.05,
        crossAxisAlignment: .start,
        children: [
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Flexible(
                flex: 1,
                child: TransformScaleWidget(
                  child: SlideTransitionAnimation(
                    uniqueKey: const Key('about-web-1'),
                    child: Image.asset(
                      AppImages.secondImage,
                      height: 500,
                      width: 500,
                    ),
                  ),
                ),
              ),

              Flexible(
                flex: 1,
                child: SlideTransitionAnimation(
                  uniqueKey: const Key('about-web-2'),
                  child: Column(
                    spacing: h * 0.02,
                    crossAxisAlignment: .start,
                    children: [
                      SideHeadingText(text: 'ABOUT ME', textSize: 0.03),
                      PrimaryDescribtion(
                        text: AboutScreenText.about,
                        textsize: 0.03,
                        textAlign: TextAlign.start,
                      ),
                      ParaghText(
                        text: AboutScreenText.aboutDescribtion,
                        textsize: 0.012,
                      ),
                      // TransformScaleWidget(
                      //   child: CommonElevatedButton(
                      //     onpressed: () {},
                      //     text: 'Download CV',
                      //     verticalpad: h * 0.015,
                      //     horipad: w * 0.005,
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          Row(
            spacing: w * 0.04,
            crossAxisAlignment: .center,
            mainAxisAlignment: .spaceBetween,
            children: AboutScreenText.expirence
                .map(
                  (e) => TransformScaleWidget(
                    child: SlideTransitionAnimation(
                      uniqueKey: Key('about-web-3${e['text']}'),
                      child: Container(
                        width: w * 0.22,

                        decoration: BoxDecoration(
                          color: AppColors.whiteColor.withValues(alpha: 0.08),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            width: 1,
                            color: AppColors.whiteColor.withValues(alpha: 0.08),
                          ),
                        ),

                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: w * 0.05,
                            vertical: h * 0.02,
                          ),
                          child: Column(
                            mainAxisAlignment: .center,
                            crossAxisAlignment: .center,
                            children: [
                              Text(
                                e['count'] ?? '',
                                style: TextStyle(
                                  color: AppColors.primaryColor,
                                  fontSize: w * 0.03,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                e['text'] ?? '',
                                style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontSize: w * 0.011,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
