import 'package:flutter/material.dart';
import 'package:portfolio/core/common/Buttons/common_elevated_button.dart';
import 'package:portfolio/core/common/app_colours/app_colors.dart';
import 'package:portfolio/core/common/app_images/app_images.dart';
import 'package:portfolio/core/common/textStyles/primary_describtion.dart';
import 'package:portfolio/core/common/widgets/animation_widgets.dart/slide_transition_animation.dart';
import 'package:portfolio/core/common/widgets/animation_widgets.dart/transform_scale_widget.dart';
import 'package:portfolio/core/common/widgets/name_widget.dart';
import 'package:portfolio/core/resources/url_launcher/load_url.dart';

class ContactScreenWindow extends StatelessWidget {
  const ContactScreenWindow({super.key});

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    final double h = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(top: h * 0.1),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.scaffoldBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.primaryColor.withValues(alpha: 0.3),
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
          border: Border(
            top: BorderSide(
              width: 1,
              color: AppColors.whiteColor.withValues(alpha: 0.3),
            ),
          ),
        ),

        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: w * 0.2,
            vertical: h * 0.05,
          ),
          child: Column(
            spacing: h * 0.05,
            mainAxisAlignment: .center,
            children: [
              SlideTransitionAnimation(
                uniqueKey: const Key('contact-web-1'),
                child: Container(
                  width: w * 0.35,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor.withValues(alpha: 0.08),
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: h * 0.01,
                      horizontal: w * 0.01,
                    ),
                    child: Row(
                      spacing: w * 0.02,
                      children: [
                        Image.asset(
                          AppImages.starIcon,
                          height: h * 0.03,
                          width: w * 0.05,
                        ),
                        Text(
                          'AVAILABLE FOR OPPERTUNITIES',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: AppColors.whiteColor,
                            fontSize: w * 0.015,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SlideTransitionAnimation(
                uniqueKey: const Key('contact-web-2'),
                child: PrimaryDescribtion(
                  text:
                      "Let's work together to transform your ideas into stunning designs. ",
                  textsize: 0.025,
                ),
              ),
              TransformScaleWidget(
                child: SlideTransitionAnimation(
                  uniqueKey: const Key('contact-web-3'),
                  child: CommonElevatedButton(
                    onpressed: () => LoadUrl.loadPersonalEmail(
                      'giyafrin2004@gmail.com',
                      'mailto',
                    ),
                    text: 'Hire Me Now',
                    verticalpad: h * 0.02,
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: .spaceBetween,
                crossAxisAlignment: .end,
                children: [
                  SlideTransitionAnimation(
                    uniqueKey: const Key('contact-web-4'),
                    child: NameWidget(
                      textSize: 0.02,
                      height: 0.03,
                      width: 0.03,
                    ),
                  ),
                  Row(
                    spacing: w * 0.02,
                    children: [
                      TransformScaleWidget(
                        child: SlideTransitionAnimation(
                          uniqueKey: const Key('contact-web-5'),
                          child: GestureDetector(
                            onTap: () => LoadUrl.loadCommonUrls(
                              'https://www.linkedin.com/in/giyafrin-a-6b8476300?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app',
                            ),
                            child: Image.asset(
                              AppImages.linkIcon,
                              height: h * 0.05,
                              width: w * 0.05,
                            ),
                          ),
                        ),
                      ),
                      TransformScaleWidget(
                        child: SlideTransitionAnimation(
                          uniqueKey: const Key('contact-web-6'),
                          child: GestureDetector(
                            onTap: () => LoadUrl.loadCommonUrls(
                              'https://www.instagram.com/giyafreen?utm_source=qr&igsh=MXc5NzRjeGw1bWI3aQ==',
                            ),
                            child: Image.asset(
                              AppImages.instaIcon,
                              height: h * 0.05,
                              width: w * 0.05,
                            ),
                          ),
                        ),
                      ),
                      TransformScaleWidget(
                        child: SlideTransitionAnimation(
                          uniqueKey: const Key('contact-web-7'),
                          child: GestureDetector(
                            onTap: () => LoadUrl.loadCommonUrls(
                              'https://www.behance.net/giyafrin',
                            ),
                            child: Image.asset(
                              AppImages.internetIcon,
                              height: h * 0.05,
                              width: w * 0.05,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
