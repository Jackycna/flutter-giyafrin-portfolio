import 'package:flutter/material.dart';
import 'package:portfolio/core/common/app_colours/app_colors.dart';
import 'package:portfolio/core/common/app_images/app_images.dart';
import 'package:portfolio/core/common/textStyles/paragh_text.dart';
import 'package:portfolio/core/common/textStyles/primary_describtion.dart';
import 'package:portfolio/core/common/textStyles/side_heading_text.dart';
import 'package:portfolio/core/common/widgets/animation_widgets.dart/slide_transition_animation.dart';
import 'package:portfolio/core/common/widgets/animation_widgets.dart/transform_scale_widget.dart';
import 'package:portfolio/core/resources/url_launcher/load_url.dart';
import 'package:portfolio/features/portfolio_screen/portfolio_data_source/portfolio_text.dart';

class PortfolioScreenMob extends StatelessWidget {
  const PortfolioScreenMob({super.key});

  @override
  Widget build(BuildContext context) {
    final double h = MediaQuery.of(context).size.height;
    final double w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: w * 0.07),
      child: Column(
        spacing: h * 0.01,
        crossAxisAlignment: .center,
        children: [
          SizedBox(height: h * 0.05),
          SlideTransitionAnimation(
            uniqueKey: const Key('portfolio-mob-1'),
            child: SideHeadingText(text: 'PORTFOLIO'),
          ),
          SlideTransitionAnimation(
            uniqueKey: const Key('portfolio-mob-2'),
            child: PrimaryDescribtion(
              text: 'Projects that reflect my expertise and vision',
            ),
          ),
          SizedBox(height: h * 0.05),
          Column(
            spacing: h * 0.05,
            children: PortfolioText.projects.map((e) {
              return TransformScaleWidget(
                child: SlideTransitionAnimation(
                  uniqueKey: Key('portfolio-mob-3${e['image']}'),
                  child: GestureDetector(
                    onTap: () => LoadUrl.loadCommonUrls(e['link']),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor.withValues(alpha: 0.08),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: h * 0.01,
                          horizontal: w * 0.02,
                        ),
                        child: Column(
                          spacing: h * 0.005,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(e['image']),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: w * 0.02,
                              ),
                              child: Row(
                                mainAxisAlignment: .spaceBetween,
                                children: [
                                  Column(
                                    spacing: h * 0.002,
                                    crossAxisAlignment: .start,
                                    children: [
                                      SideHeadingText(
                                        text: e['title'],
                                        textDecoration:
                                            TextDecoration.underline,
                                      ),
                                      ParaghText(text: e['dec']),
                                    ],
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: TransformScaleWidget(
                                      child: Image.asset(
                                        AppImages.gotoIcon,
                                        height: h * 0.05,
                                        width: w * 0.05,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
          SizedBox(height: h * 0.05),
        ],
      ),
    );
  }
}
