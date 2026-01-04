import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:portfolio/core/common/Buttons/common_elevated_button.dart';
import 'package:portfolio/core/common/app_colours/app_colors.dart';
import 'package:portfolio/core/common/widgets/animation_widgets.dart/transform_scale_widget.dart';
import 'package:portfolio/core/common/widgets/name_widget.dart';
import 'package:portfolio/core/resources/url_launcher/load_url.dart';
import 'package:portfolio/features/about_screen/about_screen_mob.dart';
import 'package:portfolio/features/about_screen/about_screen_tab.dart';
import 'package:portfolio/features/about_screen/about_screen_window.dart';
import 'package:portfolio/features/contact_screen/contact_screen_mob.dart';
import 'package:portfolio/features/contact_screen/contact_screen_tab.dart';
import 'package:portfolio/features/contact_screen/contact_screen_window.dart';
import 'package:portfolio/features/home_screen/home_screen_mobile.dart';
import 'package:portfolio/features/home_screen/home_screen_tab.dart';
import 'package:portfolio/features/home_screen/homescreen_web.dart';
import 'package:portfolio/features/main/data_source/main_screen_data_source.dart';
import 'package:portfolio/features/main/presentation/bloc/navigate_button_cubit.dart/navigate_button_cubit.dart';
import 'package:portfolio/features/main/presentation/ui/widgets/banner_widget.dart';
import 'package:portfolio/features/portfolio_screen/portfolio_data_source/portfolio_common_grid.dart';
import 'package:portfolio/features/portfolio_screen/portfolio_screen_mob.dart';
import 'package:portfolio/features/portfolio_screen/portfolio_screen_tab.dart';
import 'package:portfolio/features/portfolio_screen/portfolio_screen_window.dart';
import 'package:portfolio/features/service_screen/service_screen_mob.dart';
import 'package:portfolio/features/service_screen/service_screen_tab.dart';
import 'package:portfolio/features/service_screen/service_text/service_screen_window.dart';
import 'package:portfolio/features/service_screen/service_window_top.dart';

class MainPage extends HookWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useScrollController();
    final double h = MediaQuery.of(context).size.height;
    final double w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: BlocConsumer<NavigateButtonCubit, int>(
        builder: (context, state) {
          return SafeArea(
            child: LayoutBuilder(
              builder: (context, constraints) {
                final double width = constraints.maxWidth;
                return CustomScrollView(
                  controller: controller,
                  physics: AlwaysScrollableScrollPhysics(),
                  slivers: [
                    SliverAppBar(
                      toolbarHeight: h * 0.1,
                      elevation: 0,
                      automaticallyImplyLeading: false,
                      excludeHeaderSemantics: false,
                      floating: false,
                      pinned: false,
                      forceElevated: false,
                      forceMaterialTransparency: false,
                      primary: false,
                      scrolledUnderElevation: 0,
                      backgroundColor: AppColors.scaffoldBackgroundColor,
                      flexibleSpace: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: width < 600
                              ? w * 0.07
                              : w < 1200
                              ? w * 0.1
                              : w * 0.12,
                          vertical: h * 0.01,
                        ),
                        child: Row(
                          mainAxisAlignment: .spaceBetween,
                          children: [
                            NameWidget(
                              textSize: width < 600
                                  ? 0.04
                                  : width < 1200
                                  ? 0.025
                                  : 0.025,
                              height: width < 600
                                  ? 0.04
                                  : width < 1200
                                  ? 0.04
                                  : 0.04,
                              width: width < 600
                                  ? 0.04
                                  : width < 1200
                                  ? 0.04
                                  : 0.04,
                            ),
                            if (width > 1200)
                              Card(
                                color: AppColors.whiteColor.withValues(
                                  alpha: 0.1,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),

                                child: Row(
                                  children: MainScreenDataSource.topButtons
                                      .asMap()
                                      .entries
                                      .map((e) {
                                        final bool current = e.key == state;
                                        return GestureDetector(
                                          onTap: () {
                                            context
                                                .read<NavigateButtonCubit>()
                                                .changeButton(value: e.key);
                                          },
                                          child: CommonElevatedButton(
                                            verticalpad: 0.05,
                                            horipad: 0.01,
                                            textColor: current
                                                ? AppColors.blackColor
                                                : AppColors.whiteColor,
                                            backgroundColor: current
                                                ? AppColors.whiteColor
                                                : Colors.transparent,
                                            onpressed: () {
                                              context
                                                  .read<NavigateButtonCubit>()
                                                  .changeButton(value: e.key);
                                            },
                                            text: e.value,
                                          ),
                                        );
                                      })
                                      .toList(),
                                ),
                              ),

                            TransformScaleWidget(
                              child: CommonElevatedButton(
                                textColor: AppColors.blackColor,
                                backgroundColor: AppColors.whiteColor,
                                onpressed: () => LoadUrl.loadPersonalEmail(
                                  'giyafrin2004@gmail.com',
                                  'mailto',
                                ),
                                text: 'Hire Me',
                                verticalpad: width < 600
                                    ? w * 0.001
                                    : w < 1200
                                    ? w * 0.005
                                    : w * 0.005,
                                horipad: width < 600
                                    ? w * 0.001
                                    : w < 1200
                                    ? w * 0.001
                                    : w * 0.001,
                                textsize: width < 600
                                    ? w * 0.03
                                    : w < 1200
                                    ? w * 0.012
                                    : w * 0.012,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SliverToBoxAdapter(
                      child: width < 600
                          ? HomeScreenMobile()
                          : width < 1200
                          ? HomeScreenTab()
                          : HomescreenWeb(),
                    ),
                    SliverToBoxAdapter(child: BannerWidget()),
                    SliverToBoxAdapter(
                      child: width < 600
                          ? AboutScreenMob()
                          : width < 1200
                          ? AboutScreenTab()
                          : AboutScreenWindow(),
                    ),
                    SliverToBoxAdapter(
                      child: width < 600
                          ? ServiceScreenMob()
                          : width < 1200
                          ? ServiceScreenTab()
                          : ServiceWindowTop(),
                    ),
                    width < 600
                        ? ServiceScreenWindow(
                            crossCount: 2,
                            parahtextsize: 0.023,
                            priamryTextSize: 0.03,
                            imageHeight: 30,
                            imageWidth: 30,
                            padding: 0.07,
                          )
                        : width < 1200
                        ? ServiceScreenWindow(
                            crossCount: 2,
                            parahtextsize: 0.024,
                            priamryTextSize: 0.03,
                            padding: 0.1,
                          )
                        : ServiceScreenWindow(),
                    SliverToBoxAdapter(
                      child: width < 600
                          ? PortfolioScreenMob()
                          : width < 1200
                          ? PortfolioScreenTab()
                          : PortfolioScreenWindow(),
                    ),
                    width < 600
                        ? SliverToBoxAdapter(child: SizedBox.shrink())
                        : width < 1200
                        ? PortfolioCommonGrid(
                            crossCount: 2,
                            parahtextsize: 0.02,
                            priamryTextSize: 0.025,
                            padding: 0.1,
                            imageHeight: 0.06,
                            imageWidth: 0.06,
                          )
                        : PortfolioCommonGrid(),

                    SliverToBoxAdapter(
                      child: width < 600
                          ? ContactScreenMob()
                          : width < 1200
                          ? ContactScreenTab()
                          : ContactScreenWindow(),
                    ),
                  ],
                );
              },
            ),
          );
        },
        listener: (BuildContext context, int state) {
          if (state == 0) {
            controller.animateTo(
              0,
              duration: Duration(milliseconds: 300),
              curve: Curves.linear,
            );
          } else if (state == 1) {
            controller.animateTo(
              750,
              duration: Duration(milliseconds: 300),
              curve: Curves.linear,
            );
          } else if (state == 2) {
            controller.animateTo(
              1550,
              duration: Duration(milliseconds: 300),
              curve: Curves.linear,
            );
          } else if (state == 3) {
            controller.animateTo(
              2350,
              duration: Duration(milliseconds: 300),
              curve: Curves.linear,
            );
          }
        },
      ),
    );
  }
}
