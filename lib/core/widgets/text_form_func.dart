import 'package:advanced_flutter/core/defult_themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFormFunc extends StatelessWidget {
  final String hintName;
  final bool? obsecureText;
  final Widget suffixIcon;
  final Function(String?) validate;
  final TextEditingController? controller;
  const TextFormFunc({
    super.key,
    required this.hintName,
    this.obsecureText,
    required this.suffixIcon,
    required this.validate,
    required this.controller
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obsecureText ?? false,
      validator: (val) {
        return validate(val);
      },
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: Themes.grayTextFill,
        suffixIcon: suffixIcon,
        contentPadding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 17.w),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Themes.gray, width: 1.3),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Themes.defaultColor, width: 1.1),
        ),
        hintText: hintName,
      ),
    );
  }
}
