import 'package:flutter/material.dart';
import 'package:portfolio/core/common/app_colours/app_colors.dart';
import 'package:portfolio/core/common/app_images/app_images.dart';
import 'package:portfolio/core/common/textStyles/paragh_text.dart';
import 'package:portfolio/core/common/textStyles/primary_describtion.dart';
import 'package:portfolio/core/common/textStyles/side_heading_text.dart';
import 'package:portfolio/core/common/widgets/animation_widgets.dart/slide_transition_animation.dart';
import 'package:portfolio/core/common/widgets/animation_widgets.dart/transform_scale_widget.dart';
import 'package:portfolio/features/about_screen/data_source/about_screen_text.dart';

class AboutScreenMob extends StatelessWidget {
  const AboutScreenMob({super.key});

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    final double h = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: w * 0.07),
      child: Column(
        spacing: h * 0.03,
        crossAxisAlignment: .center,
        children: [
          SlideTransitionAnimation(
            uniqueKey: const Key('about-mob-1'),
            child: SideHeadingText(text: 'ABOUT ME'),
          ),
          SlideTransitionAnimation(
            uniqueKey: const Key('about-mob-2'),
            child: PrimaryDescribtion(text: AboutScreenText.about),
          ),
          SlideTransitionAnimation(
            uniqueKey: const Key('about-mob-3'),
            child: ParaghText(
              textAlign: TextAlign.center,
              text: AboutScreenText.aboutDescribtion,
            ),
          ),
          // TransformScaleWidget(
          //   child: SlideTransitionAnimation(
          //     uniqueKey: const Key('about-mob-4'),
          //     child: CommonElevatedButton(
          //       onpressed: () {},
          //       text: 'Download CV',
          //       verticalpad: h * 0.015,
          //       horipad: w * 0.005,
          //     ),
          //   ),
          // ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: h * 0.05),
            child: TransformScaleWidget(
              child: SlideTransitionAnimation(
                uniqueKey: const Key('about-mob-5'),
                child: Image.asset(
                  AppImages.secondImage,
                  height: 400,
                  width: 400,
                ),
              ),
            ),
          ),
          Wrap(
            spacing: w * 0.04,
            crossAxisAlignment: .center,
            runSpacing: h * 0.05,
            children: AboutScreenText.expirence
                .map(
                  (e) => TransformScaleWidget(
                    child: SlideTransitionAnimation(
                      uniqueKey: Key('about-mob-6${e['text']}'),
                      child: Container(
                        width: w * 0.5,
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
                                  fontSize: w * 0.06,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                e['text'] ?? '',
                                style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontSize: w * 0.025,
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
