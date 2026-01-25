import 'package:advanced_flutter/core/defult_themes/fontwaight.dart';
import 'package:advanced_flutter/core/defult_themes/themes.dart';
import 'package:flutter/material.dart';

class TextStyles {
  static const TextStyle font24primaryBold = TextStyle(
    fontSize: 24,

    fontWeight: FontWaightDefault.bold,
    color: Themes.defaultColor,
  );
  static const TextStyle font12gray = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: Themes.gray,
  );
  static const TextStyle font11grayRegular = TextStyle(
    fontSize: 11,
    fontWeight: FontWaightDefault.regular,
    color: Themes.gray,
  );
  static const TextStyle font11BlackMedium = TextStyle(
    fontSize: 11,
    fontWeight: FontWaightDefault.medium,
    color: Colors.black,
  );
  static TextStyle font11BlueSemiBold = TextStyle(
    fontSize: 11,
    fontWeight: FontWaightDefault.semiBold,
    color: Themes.defaultColor,
  );
  static const TextStyle font14textContentGray = TextStyle(
    fontSize: 14,
    fontWeight: FontWaightDefault.regular,
    color: Themes.textContentGray,
  );
  static const TextStyle font12textContentGray = TextStyle(
    fontSize: 12,
    fontWeight: FontWaightDefault.regular,
    color: Themes.textContentGray,
  );
  static const TextStyle font12TextContentBlueLight = TextStyle(
    fontSize: 12,
    fontWeight: FontWaightDefault.regular,
    color: Themes.textBlueLightColor,
  );
  static const TextStyle font16TextSemiBoldWhite = TextStyle(
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWaightDefault.semiBold,
  );
  static const TextStyle font13TextDarkBlueRegular = TextStyle(
    fontSize: 13,
    color: Themes.textDarkBlue,
    fontWeight: FontWaightDefault.regular,
  );
  static TextStyle font15DarkBlueMedium = TextStyle(
    fontSize: 15,
    fontWeight: FontWaightDefault.medium,
    color: Themes.textDarkBlue,
  );
  static TextStyle font14BlueSemiBold = TextStyle(
    fontSize: 14,
    fontWeight: FontWaightDefault.semiBold,
    color: Themes.defaultColor,
  );
}
