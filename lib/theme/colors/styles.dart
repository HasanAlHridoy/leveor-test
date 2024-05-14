import 'package:flutter/material.dart';
import 'package:leveor_test/theme/colors/colors.dart';

class AppStyles {
  static get bodyLarge => TextStyle(fontSize: 22, fontWeight: FontWeight.w400, color: AppColors.primaryColor);

  static get bodySmall => TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.primaryColor);

  static get bodySmallForButton1 => TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.buttonColor);

  static get bodySmallForButton2 => TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.colorWhite);
}
