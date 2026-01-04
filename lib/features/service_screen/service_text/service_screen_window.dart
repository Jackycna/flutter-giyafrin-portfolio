import 'package:flutter/material.dart';
import 'package:portfolio/core/common/app_colours/app_colors.dart';
import 'package:portfolio/core/common/textStyles/paragh_text.dart';
import 'package:portfolio/core/common/textStyles/primary_describtion.dart';
import 'package:portfolio/core/common/widgets/animation_widgets.dart/slide_transition_animation.dart';
import 'package:portfolio/core/common/widgets/animation_widgets.dart/transform_scale_widget.dart';
import 'package:portfolio/features/service_screen/service_text/service_text_helper.dart';

class ServiceScreenWindow extends StatelessWidget {
  final int crossCount;
  final double imageHeight;
  final double imageWidth;
  final double containerWidth;
  final double parahtextsize;
  final double priamryTextSize;
  final double padding;
  const ServiceScreenWindow({
    super.key,
    this.crossCount = 3,
    this.imageHeight = 40,
    this.imageWidth = 40,
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
        itemCount: ServiceTextHelper.services.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossCount,
          mainAxisSpacing: h * 0.005,
          crossAxisSpacing: w * 0.05,
        ),
        itemBuilder: (context, index) {
          final item = ServiceTextHelper.services[index];
          return TransformScaleWidget(
            child: SlideTransitionAnimation(
              uniqueKey: Key('service-web-3${item['title']}'),
              child: Padding(
                padding: EdgeInsets.only(bottom: h * 0.03),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor.withValues(alpha: 0.08),
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      width: 1,
                      color: AppColors.whiteColor.withValues(alpha: 0.08),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: w * 0.02),
                    child: Column(
                      mainAxisAlignment: .center,

                      spacing: h * 0.01,
                      crossAxisAlignment: .start,
                      children: [
                        Image.asset(
                          item['image'] ?? '',
                          height: imageHeight,
                          width: imageWidth,
                        ),
                        PrimaryDescribtion(
                          text: item['title'] ?? '',
                          textsize: priamryTextSize,
                        ),
                        Flexible(
                          flex: 1,
                          child: ParaghText(
                            text: item['describtion'] ?? '',
                            textsize: parahtextsize,
                          ),
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
