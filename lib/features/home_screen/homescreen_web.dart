import 'package:flutter/material.dart';
import 'package:portfolio/core/common/Buttons/common_elevated_button.dart';
import 'package:portfolio/core/common/app_colours/app_colors.dart';
import 'package:portfolio/core/common/app_images/app_images.dart';
import 'package:portfolio/core/common/widgets/animation_widgets.dart/slide_transition_animation.dart';
import 'package:portfolio/core/common/widgets/animation_widgets.dart/transform_scale_widget.dart';
import 'package:portfolio/core/resources/url_launcher/load_url.dart';

class HomescreenWeb extends StatelessWidget {
  const HomescreenWeb({super.key});

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    final double h = MediaQuery.of(context).size.height;
    return SizedBox(
      height: h * 0.77,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: w * 0.12),
        child: Row(
          crossAxisAlignment: .center,
          mainAxisAlignment: .spaceBetween,
          children: [
            Column(
              spacing: h * 0.01,
              crossAxisAlignment: .start,
              mainAxisAlignment: .center,
              children: [
                SlideTransitionAnimation(
                  uniqueKey: const Key('home-web-1'),
                  child: SizedBox(
                    width: 350,
                    child: Card(
                      elevation: 0,
                      color: AppColors.whiteColor.withValues(alpha: 0.1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 16,
                        ),
                        child: Row(
                          spacing: 10,
                          children: [
                            Image.asset(
                              AppImages.starIcon,
                              height: 20,
                              width: 20,
                            ),
                            Text(
                              'AVAILABLE FOR OPPERTUNITIES',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: AppColors.whiteColor,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SlideTransitionAnimation(
                  uniqueKey: const Key('home-web-2'),
                  child: Text(
                    "Hey, I'm Giyafrin,\nUI/UX Designer",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: AppColors.whiteColor,
                      fontSize: 50,
                    ),
                  ),
                ),
                SlideTransitionAnimation(
                  uniqueKey: const Key('home-web-3'),
                  child: Text(
                    'Building professional, user-friendly designs that support\nfunctionality and boost user engagement.',
                    style: TextStyle(color: AppColors.whiteColor),
                  ),
                ),
                SizedBox(height: 10),
                SlideTransitionAnimation(
                  uniqueKey: const Key('home-web-4'),
                  child: Wrap(
                    spacing: 20,
                    children: [
                      TransformScaleWidget(
                        child: CommonElevatedButton(
                          onpressed: () => LoadUrl.loadCommonUrls(
                            'https://www.instagram.com/giyafreen?utm_source=qr&igsh=MXc5NzRjeGw1bWI3aQ==',
                          ),
                          text: "Let's Talk",
                          verticalpad: 15,
                          horipad: 1,
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
                          verticalpad: 15,
                          horipad: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Flexible(
              flex: 1,
              child: TransformScaleWidget(
                child: SlideTransitionAnimation(
                  uniqueKey: const Key('home-web-5'),
                  child: Image.asset(
                    AppImages.firstImage,
                    height: 500,
                    width: 500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
