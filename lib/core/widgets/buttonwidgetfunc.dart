import 'package:advanced_flutter/core/defult_themes/textstyles.dart';
import 'package:advanced_flutter/core/defult_themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonWidgetFunc extends StatelessWidget {
  final String text;
  final VoidCallback func;
  final Color? buttonColor;
  final double? height;
  final double? width;
  final double? paddingHeight;
  final double? paddingWidth;
  const ButtonWidgetFunc({
    super.key,
    required this.text,
    this.buttonColor,
    this.height,
    this.width,
    this.paddingHeight,
    this.paddingWidth, required this.func,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
        // padding: WidgetStatePropertyAll(
        //   EdgeInsets.symmetric(
        //     vertical: paddingHeight?.h ?? 14.h,
        //     horizontal: paddingWidth?.w ?? 12.w,
        //   ),
        // ),
        backgroundColor: WidgetStatePropertyAll(
          buttonColor ?? Themes.textBlueLightColor,
        ),
        foregroundColor: WidgetStatePropertyAll(Colors.white),
        textStyle: WidgetStatePropertyAll(TextStyles.font16TextSemiBoldWhite),
        fixedSize: WidgetStatePropertyAll(
          Size(width ?? double.maxFinite, height ?? 52.h),
        ),
      ),
      onPressed: func,
      child: Text(text),
    );
  }
}
