import 'package:advanced_flutter/core/defult_themes/textstyles.dart';
import 'package:advanced_flutter/core/defult_themes/themes.dart';
import 'package:flutter/material.dart';

class PasswordValidates extends StatefulWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacter;
  final bool hasNumber;
  final bool hasMinLength;
  const PasswordValidates({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacter,
    required this.hasNumber,
    required this.hasMinLength,
  });

  @override
  State<PasswordValidates> createState() => _PasswordValidatesState();
}

class _PasswordValidatesState extends State<PasswordValidates> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          passwordRow("At least 1 lowercase letter", widget.hasLowerCase),
          SizedBox(height: 2),
          passwordRow("At least 1 uppercase letter", widget.hasUpperCase),
          SizedBox(height: 2),
          passwordRow(
            "At least 1 special character letter",
            widget.hasSpecialCharacter,
          ),
          SizedBox(height: 2),
          passwordRow("At least 1 Number ", widget.hasNumber),
          SizedBox(height: 2),
          passwordRow("At least 8 characters long", widget.hasSpecialCharacter),
        ],
      ),
    );
  }

  Widget passwordRow(String text, bool validState) {
    return Row(
      children: [
        CircleAvatar(radius: 1.5, backgroundColor: Themes.gray),
        Text(
          text,
          style: TextStyles.font13TextDarkBlueRegular.copyWith(
            decoration: validState ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: validState ? Themes.gray : Themes.textDarkBlue,
          ),
        ),
      ],
    );
  }
}
