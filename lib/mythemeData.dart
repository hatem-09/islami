import 'package:flutter/material.dart';
import 'package:islami/AppColor/appcolor.dart';


class mythemedata {
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      dividerTheme: DividerThemeData(color: AppColors.primary, thickness: 2,),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.primary,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: AppColors.black,
        unselectedItemColor: AppColors.white,
        type: BottomNavigationBarType.fixed,
      ),
      textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),
          bodyMedium: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),
          bodySmall:TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),
      colorScheme:ColorScheme(brightness: Brightness.light,
          primary: AppColors.primary,
          onPrimary: AppColors.primary,
          secondary: AppColors.primary,
          onSecondary: AppColors.primary,
          error: AppColors.primary,
          onError: AppColors.primary,
          surface: AppColors.primary,
          onSurface: AppColors.primary)
  );
  static ThemeData darkTheme = ThemeData(
    primaryColor: AppColors.dark,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      dividerTheme: DividerThemeData(color: AppColors.yellow,
        thickness: 2,),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.dark,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: AppColors.yellow,
        unselectedItemColor: AppColors.white,
        type: BottomNavigationBarType.fixed,
      ),
      textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: AppColors.white),
          bodyMedium: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: AppColors.yellow),
          bodySmall:TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: AppColors.white)),
      colorScheme:ColorScheme(brightness: Brightness.light,
          primary: AppColors.primary,
          onPrimary: AppColors.primary,
          secondary: AppColors.primary,
          onSecondary: AppColors.primary,
          error: AppColors.primary,
          onError: AppColors.primary,
          surface: AppColors.primary,
          onSurface: AppColors.primary)
  );
}