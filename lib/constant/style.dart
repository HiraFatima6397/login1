import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login1/constant/color.dart';
import 'package:login1/constant/fonts.dart';


class AppStyles {
  static TextStyle regularText({
    double? height,
    Color? color,
    bool isUnderline = false,
    double? fontSize,
    FontWeight? fontWeight,
    String? fontFamily
  }) {
    return TextStyle(
      fontFamily: fontFamily ?? AppFonts.regular,
      fontSize: fontSize ?? 16,
      fontWeight: fontWeight ?? FontWeight.w500,
      color: color ?? AppColors.whatEverThunder,
      height: height,
      decoration: isUnderline ? TextDecoration.underline : TextDecoration.none,
    );

  }
}
class AppStyles1{
  static TextStyle boldText({
    double? height,
    Color? color,
    bool isUnderline = false,
    double? fontSize,
    FontWeight? fontWeight,
    String? fontFamily
  }) {
    return TextStyle(
      fontFamily: fontFamily ?? AppFonts.bold,
      fontSize: fontSize ?? 40,
      fontWeight: fontWeight ?? FontWeight.w600,
      color: color ?? AppColors.createAccountCantaloupe,
      height: height,
      decoration: isUnderline ? TextDecoration.underline : TextDecoration.none,
    );

  }
}
class AppStyles2{
  static TextStyle mediumText({
    double? height,
    Color? color,
    bool isUnderline = false,
    double? fontSize,
    FontWeight? fontWeight,
    String? fontFamily
  }) {
    return TextStyle(
      fontFamily: fontFamily ?? AppFonts.medium,
      fontSize: fontSize ?? 40,
      fontWeight: fontWeight ?? FontWeight.w500,
      color: color ?? AppColors.createAccountCantaloupe,
      height: height,
      decoration: isUnderline ? TextDecoration.underline : TextDecoration.none,
    );

  }
}
class AppStyles3{
  static TextStyle semiBoldText({
    double? height,
    Color? color,
    bool isUnderline = false,
    double? fontSize,
    FontWeight? fontWeight,
    String? fontFamily
  }) {
    return TextStyle(
      fontFamily: fontFamily ?? AppFonts.semiBold,
      fontSize: fontSize ?? 40,
      fontWeight: fontWeight ?? FontWeight.w600,
      color: color ?? AppColors.createAccountCantaloupe,
      height: height,
      decoration: isUnderline ? TextDecoration.underline : TextDecoration.none,
    );

  }
}
