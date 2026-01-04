import 'package:flutter/material.dart';
import 'package:portfolio/core/common/app_colours/app_colors.dart';
import 'package:portfolio/core/common/app_images/app_images.dart';
import 'package:portfolio/core/common/textStyles/paragh_text.dart';
import 'package:portfolio/core/common/textStyles/side_heading_text.dart';
import 'package:portfolio/core/common/widgets/animation_widgets.dart/slide_transition_animation.dart';
import 'package:portfolio/core/common/widgets/animation_widgets.dart/transform_scale_widget.dart';
import 'package:portfolio/core/resources/url_launcher/load_url.dart';
import 'package:portfolio/features/portfolio_screen/portfolio_data_source/portfolio_text.dart';

class PortfolioCommonGrid extends StatelessWidget {
  final int crossCount;
  final double imageHeight;
  final double imageWidth;
  final double containerWidth;
  final double parahtextsize;
  final double priamryTextSize;
  final double padding;
  const PortfolioCommonGrid({
    super.key,
    this.crossCount = 3,
    this.imageHeight = 0.06,
    this.imageWidth = 0.06,
    this.containerWidth = 0.3,
    this.parahtextsize = 0.01,
    this.priamryTextSize = 0.015,
    this.padding = 0.12,
  });

  @override
  Widget build(BuildContext context) {
    final double h = MediaQuery.of(context).size.height;
    final double w = MediaQuery.of(context).size.width;
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: w * padding),
      sliver: SliverGrid.builder(
        itemCount: PortfolioText.projects.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossCount,
          mainAxisSpacing: h * 0.05,
          crossAxisSpacing: w * 0.05,
        ),
        itemBuilder: (context, index) {
          final e = PortfolioText.projects[index];
          return TransformScaleWidget(
            child: SlideTransitionAnimation(
              uniqueKey: Key('portfolio-web-3${e['dec']}'),
              child: GestureDetector(
                onTap: () => LoadUrl.loadCommonUrls(e['link']),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor.withValues(alpha: 0.08),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Column(
                      spacing: h * 0.005,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(e['image']),
                        Row(
                          mainAxisAlignment: .spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Column(
                                spacing: h * 0.002,
                                crossAxisAlignment: .start,
                                children: [
                                  SideHeadingText(
                                    text: e['title'],
                                    textDecoration: TextDecoration.underline,
                                    textSize: priamryTextSize,
                                  ),
                                  ParaghText(
                                    text: e['dec'],
                                    textsize: parahtextsize,
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Image.asset(
                                AppImages.gotoIcon,
                                height: h * imageHeight,
                                width: w * imageWidth,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
