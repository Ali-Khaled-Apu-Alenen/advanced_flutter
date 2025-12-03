import 'package:advanced_flutter/core/defult_themes/themes.dart';
import 'package:flutter/material.dart';

class TextStyles {
  static const TextStyle font24primary = TextStyle(
    fontSize: 24,
    
    fontWeight: FontWeight.bold,
    color: Themes.defaultColor,
  );
  static const TextStyle font12gray = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: Themes.gray,
  );
}