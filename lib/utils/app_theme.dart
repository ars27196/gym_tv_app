import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  static AppTheme? _instance;

  static AppTheme getInstance() {
    if (_instance == null) {
      _instance = AppTheme();
      return _instance!;
    } else {
      return _instance!;
    }
  }

  static String get fontName => 'Poppins';

    TextStyle? titleTextWhite28 = TextStyle(
      color: AppColors.white,
      fontFamily: AppTheme.fontName,
      fontSize: 28,
      fontWeight: FontWeight.w600,);

  TextStyle? textWhite18 = TextStyle(
      color: AppColors.white,
      fontFamily: AppTheme.fontName,
      fontSize: 18,
      fontWeight: FontWeight.w400,);

  TextStyle? hintTextGrey14 = TextStyle(
    color: AppColors.hintGrey,
    fontFamily: AppTheme.fontName,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  TextStyle  titleTextRed14 = TextStyle(
    color: AppColors.red,
    fontFamily: AppTheme.fontName,
    fontSize: 14,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
  );
  TextStyle  titleTextRed18 = TextStyle(
    color: AppColors.red,
    fontFamily: AppTheme.fontName,
    fontSize: 18,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
  );

  textRegular18White() {
    return TextStyle(
      color: AppColors.white,
      fontFamily: AppTheme.fontName,
      fontSize: 18,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
    );
  }

  textRegular14BoldWhite() {
    return TextStyle(
      color: AppColors.white,
      fontFamily: AppTheme.fontName,
      fontSize: 14,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w700,
    );
  }

  textRegular18BoldWhite() {
    return TextStyle(
    color: AppColors.white,
    fontFamily: AppTheme.fontName,
    fontSize: 18,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
  );}

  textBold16RedLight() {
    return TextStyle(
      color: AppColors.red,
      fontFamily: AppTheme.fontName,
      fontSize: 16,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w200,
    );
  }
  textBold16RedBold() {
    return TextStyle(
      color: AppColors.red,
      fontFamily: AppTheme.fontName,
      fontSize: 20,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w700,
    );
  }
}
