import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:portfolio/core/common/app_colours/app_colors.dart';
import 'package:portfolio/core/common/app_images/app_images.dart';
import 'package:portfolio/features/main/data_source/main_screen_data_source.dart';

class BannerWidget extends HookWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useScrollController();
    final double h = MediaQuery.of(context).size.height;
    final double w = MediaQuery.of(context).size.height;
    void startScrolling() {
      if (controller.hasClients) {
        controller
            .animateTo(
              controller.offset + w * 0.05,
              duration: const Duration(seconds: 1),
              curve: Curves.linear,
            )
            .then((_) => startScrolling());
      } else {
        controller
            .animateTo(
              0,
              duration: Duration(milliseconds: 300),
              curve: Curves.linear,
            )
            .then((_) => startScrolling());
      }
    }

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        startScrolling();
      });
      return null;
    }, []);

    return Padding(
      padding: EdgeInsets.symmetric(vertical: h * 0.05),
      child: Container(
        height: h * 0.08,
        decoration: BoxDecoration(color: AppColors.primaryColor),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: h * 0.008),
          child: Container(
            color: AppColors.whiteColor,
            child: ListView.builder(
              controller: controller,
              scrollDirection: Axis.horizontal,
              itemCount: MainScreenDataSource.skill.length * 100,
              itemBuilder: (context, index) {
                final item = MainScreenDataSource.skill[index % 5];
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: w * 0.05),
                  child: Row(
                    spacing: w * 0.005,
                    children: [
                      Image.asset(
                        AppImages.starIcon,
                        height: h * 0.07,
                        width: w * 0.03,
                      ),
                      Text(
                        item,
                        style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: w * 0.02,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
