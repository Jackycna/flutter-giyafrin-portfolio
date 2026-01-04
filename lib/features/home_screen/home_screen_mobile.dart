import 'package:flutter/material.dart';
import 'package:portfolio/core/common/Buttons/common_elevated_button.dart';
import 'package:portfolio/core/common/app_colours/app_colors.dart';
import 'package:portfolio/core/common/app_images/app_images.dart';
import 'package:portfolio/core/common/textStyles/paragh_text.dart';
import 'package:portfolio/core/common/widgets/animation_widgets.dart/slide_transition_animation.dart';
import 'package:portfolio/core/common/widgets/animation_widgets.dart/transform_scale_widget.dart';
import 'package:portfolio/core/common/widgets/avail_for_oppur.dart';
import 'package:portfolio/core/resources/url_launcher/load_url.dart';
import 'package:portfolio/features/home_screen/data_source/home_screen_text.dart';

class HomeScreenMobile extends StatelessWidget {
  const HomeScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    final double h = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: w * 0.07),
      child: Column(
        spacing: h * 0.05,
        children: [
          Column(
            spacing: h * 0.02,
            crossAxisAlignment: .center,
            children: [
              SizedBox(height: h * 0.03),
              SlideTransitionAnimation(
                uniqueKey: const Key('home-mob-1'),
                child: AvailForOppur(),
              ),
              SlideTransitionAnimation(
                uniqueKey: const Key('home-mob-2'),
                child: Text(
                  HomeScreenText.homeMaintext,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: AppColors.whiteColor,
                    fontSize: w * 0.06,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SlideTransitionAnimation(
                uniqueKey: const Key('home-mob-3'),
                child: ParaghText(
                  textAlign: TextAlign.center,
                  text: HomeScreenText.homedescribtion,
                ),
              ),
              SizedBox(height: h * 0.01),
              SlideTransitionAnimation(
                uniqueKey: const Key('home-mob-4'),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: w * 0.05,
                  children: [
                    TransformScaleWidget(
                      child: CommonElevatedButton(
                        onpressed: () => LoadUrl.loadCommonUrls(
                          'https://www.instagram.com/giyafreen?utm_source=qr&igsh=MXc5NzRjeGw1bWI3aQ==',
                        ),
                        text: "Let's Talk",
                        verticalpad: w * 0.02,
                        horipad: h * 0.005,
                      ),
                    ),
                    TransformScaleWidget(
                      child: CommonElevatedButton(
                        onpressed: () => LoadUrl.loadCommonUrls(
                          'https://www.behance.net/giyafrin',
                        ),
                        text: "My Work's",
                        backgroundColor: AppColors.whiteColor.withValues(
                          alpha: 0.1,
                        ),
                        textColor: AppColors.whiteColor,
                        borderColor: AppColors.whiteColor.withValues(
                          alpha: 0.1,
                        ),
                        verticalpad: w * 0.02,
                        horipad: h * 0.005,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          TransformScaleWidget(
            child: SlideTransitionAnimation(
              uniqueKey: const Key('home-mob-5'),
              child: Image.asset(AppImages.firstImage, height: 400, width: 400),
            ),
          ),
        ],
      ),
    );
  }
}
