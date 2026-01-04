import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/common/app_colours/app_colors.dart';
import 'package:portfolio/core/resources/routues/go_router_routes.dart';
import 'package:portfolio/features/main/presentation/bloc/navigate_button_cubit.dart/navigate_button_cubit.dart';
import 'package:portfolio/firebase_options.dart';

void main() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<NavigateButtonCubit>(create: (_) => NavigateButtonCubit()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: Size(1440, 1565),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: GoRouterRoutes.routes,
        scaffoldMessengerKey: GoRouterRoutes.scaffoldKey,
        title: 'Portfolio',
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
          colorScheme: .fromSeed(seedColor: AppColors.whiteColor),
          fontFamily: 'brico',
        ),
      ),
    );
  }
}
