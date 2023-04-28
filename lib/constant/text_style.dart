import 'package:flutter/material.dart';
import 'color_config.dart';

class AppTextStyle{


  static const quicksandRBold = 'Poppins Bold';
  static const quicksandRegular = 'Quicksand Regular';
  static const quicksandLight = 'Quicksand Light';
  static const quicksandMedium = 'Quicksand Medium';

  static const textFontSize18 = 15.0;
  static const textFontSize16 = 16.0;
  static const textFontSize15 = 18.0;
  static const textFontSize20 = 20.0;
  static const textFontSize24 = 24.0;
}


class CustomTextStyle{

  static TextStyle buttonText = const TextStyle(
      fontSize: AppTextStyle.textFontSize24,
      color: ColorConfig.colorWhite,
      fontWeight: FontWeight.w500
  );

  static TextStyle splashText = const TextStyle(
      fontSize: AppTextStyle.textFontSize20,
      color: ColorConfig.colorWhite,
      fontWeight: FontWeight.w500
  );

  static TextStyle appBarText = const TextStyle(
    color: ColorConfig.colorWhite,
    fontSize: AppTextStyle.textFontSize24,
    fontWeight: FontWeight.w700,
    //height: 96
  );

  static TextStyle linkText = const TextStyle(
      fontSize: AppTextStyle.textFontSize18,
      color: ColorConfig.colorLightBlue,
      fontWeight: FontWeight.w500
  );

  static TextStyle headingText = const TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 26,
      fontFamily: AppTextStyle.quicksandMedium,
    color: ColorConfig.colorRed
  );

  static TextStyle accountText = const TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 15,
      fontFamily: AppTextStyle.quicksandMedium,
      color: ColorConfig.colorRed
  );

  static TextStyle fogotText = const TextStyle(
      fontSize: AppTextStyle.textFontSize18,
      color: ColorConfig.colorBlack,
      fontWeight: FontWeight.w500
  );

  static TextStyle sectionText = const TextStyle(
      fontSize: AppTextStyle.textFontSize18,
      color: ColorConfig.colorRed,
      fontWeight: FontWeight.w500,
    fontFamily: AppTextStyle.quicksandRBold,
  );

  static TextStyle titleText = const TextStyle(
      fontSize: AppTextStyle.textFontSize18,
      color: ColorConfig.colorBlack,
      fontWeight: FontWeight.w500,
    fontFamily: AppTextStyle.quicksandMedium,
  );

  static TextStyle subTitleText = const TextStyle(
      fontSize: AppTextStyle.textFontSize18,
      color: ColorConfig.colorBlack,
      fontWeight: FontWeight.w500,
    fontFamily: AppTextStyle.quicksandRegular,
  );
  static TextStyle dateText = const TextStyle(
      fontSize: AppTextStyle.textFontSize16,
      color: ColorConfig.colorBlack,
      fontWeight: FontWeight.w500,
    fontFamily: AppTextStyle.quicksandRegular,
  );

  static TextStyle menuText = const TextStyle(
    fontSize: AppTextStyle.textFontSize18,
    color: ColorConfig.colorRed,
    fontWeight: FontWeight.w500,
    fontFamily: AppTextStyle.quicksandRBold,
  );
}

