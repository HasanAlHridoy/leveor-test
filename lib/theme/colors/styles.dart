import 'package:flutter/material.dart';
import 'package:leveor_test/theme/colors/colors.dart';

class AppStyles {
  // Text Styles

  static get bodyLarge => TextStyle(fontSize: 22, fontWeight: FontWeight.w400, color: AppColors.primaryColor);

  static get bodySmall => TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.primaryColor);

  static get bodySmallForButton1 => TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.buttonColor);

  static get bodySmallForButton2 => TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.colorWhite);

  // Button Styles

  static ButtonStyle get buttonStyle => ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(AppColors.buttonColor),
        foregroundColor: MaterialStateProperty.all<Color>(AppColors.colorWhite),
      );
}
