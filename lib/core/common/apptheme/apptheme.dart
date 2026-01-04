import 'package:flutter/material.dart';
import 'package:portfolio/core/common/app_colours/app_colors.dart';
import 'package:portfolio/core/common/apptheme/app_theme_extension.dart';

class Apptheme {
  static ThemeData get lightTheme => ThemeData(
    colorScheme: ColorScheme.light(primary: AppColors.primaryColor),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primaryColor,
      toolbarHeight: 50,
    ),

    extensions: [AppThemeExtension()],
    bottomAppBarTheme: BottomAppBarThemeData(
      elevation: 5,
      color: AppColors.primaryColor,
      padding: EdgeInsets.all(5),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: AppColors.primaryColor,
      clipBehavior: Clip.antiAlias,
      elevation: 5,
      shadowColor: AppColors.primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(10),
      ),
      showDragHandle: true,
      constraints: BoxConstraints(
        maxHeight: double.infinity,
        maxWidth: double.infinity,
        minHeight: 200,
        minWidth: double.infinity,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.primaryColor,
      selectedItemColor: AppColors.whiteColor,
      unselectedItemColor: AppColors.blackColor,
      showUnselectedLabels: false,
      showSelectedLabels: true,
      elevation: 5,
      type: BottomNavigationBarType.shifting,
    ),
    brightness: Brightness.light,
    cardColor: AppColors.whiteColor,
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.primaryColor,
      disabledColor: Colors.transparent,
      highlightColor: AppColors.primaryColor,
    ),
    carouselViewTheme: CarouselViewThemeData(
      padding: EdgeInsets.zero,
      elevation: 5,
      itemClipBehavior: Clip.antiAlias,
      backgroundColor: AppColors.primaryColor,
    ),
    drawerTheme: DrawerThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(10),
      ),
      shadowColor: AppColors.primaryColor,
      width: 200,
      elevation: 5,
    ),
    useMaterial3: true,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryColor,
      elevation: 5,
      disabledElevation: 0,
      shape: CircleBorder(),
      splashColor: AppColors.primaryColor,
    ),
    iconTheme: IconThemeData(color: AppColors.primaryColor),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(AppColors.primaryColor),
        animationDuration: Duration(milliseconds: 300),
        shape: WidgetStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(),
        ),
        elevation: WidgetStateProperty.all<double>(5),
      ),
    ),
    hoverColor: AppColors.primaryColor,
    primaryColor: AppColors.primaryColor,
    snackBarTheme: SnackBarThemeData(
      backgroundColor: AppColors.greyColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(10),
      ),
    ),
    inputDecorationTheme: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(width: 1, color: AppColors.primaryColor),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(width: 1, color: AppColors.primaryColor),
      ),
      enabled: true,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(width: 1, color: AppColors.primaryColor),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(width: 1, color: AppColors.primaryColor),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(width: 1, color: AppColors.primaryColor),
      ),
    ),
  );

  static ThemeData get darkTheme => ThemeData(
    colorScheme: ColorScheme.dark(primary: AppColors.primaryColor),

    brightness: Brightness.dark,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primaryColor,
      toolbarHeight: 50,
    ),
    bottomAppBarTheme: BottomAppBarThemeData(
      elevation: 5,
      color: AppColors.primaryColor,
      padding: EdgeInsets.all(5),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: AppColors.primaryColor,
      clipBehavior: Clip.antiAlias,
      elevation: 5,
      shadowColor: AppColors.primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(10),
      ),
      showDragHandle: true,
      constraints: BoxConstraints(
        maxHeight: double.infinity,
        maxWidth: double.infinity,
        minHeight: 200,
        minWidth: double.infinity,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.primaryColor,
      selectedItemColor: AppColors.whiteColor,
      unselectedItemColor: AppColors.blackColor,
      showUnselectedLabels: false,
      showSelectedLabels: true,
      elevation: 5,
      type: BottomNavigationBarType.shifting,
    ),
    cardColor: AppColors.whiteColor,
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.primaryColor,
      disabledColor: Colors.transparent,
      highlightColor: AppColors.primaryColor,
    ),
    carouselViewTheme: CarouselViewThemeData(
      padding: EdgeInsets.zero,
      elevation: 5,
      itemClipBehavior: Clip.antiAlias,
      backgroundColor: AppColors.primaryColor,
    ),
    drawerTheme: DrawerThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(10),
      ),
      shadowColor: AppColors.primaryColor,
      width: 200,
      elevation: 5,
    ),
    useMaterial3: true,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryColor,
      elevation: 5,
      disabledElevation: 0,
      shape: CircleBorder(),
      splashColor: AppColors.primaryColor,
    ),
    iconTheme: IconThemeData(color: AppColors.primaryColor),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(AppColors.primaryColor),
        animationDuration: Duration(milliseconds: 300),
        shape: WidgetStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(),
        ),
        elevation: WidgetStateProperty.all<double>(5),
      ),
    ),
    hoverColor: AppColors.primaryColor,
    primaryColor: AppColors.primaryColor,
    snackBarTheme: SnackBarThemeData(
      backgroundColor: AppColors.greyColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(10),
      ),
    ),
    inputDecorationTheme: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(width: 1, color: AppColors.primaryColor),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(width: 1, color: AppColors.primaryColor),
      ),
      enabled: true,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(width: 1, color: AppColors.primaryColor),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(width: 1, color: AppColors.primaryColor),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(width: 1, color: AppColors.primaryColor),
      ),
    ),
  );
}
