import 'package:advanced_flutter/core/defult_themes/textstyles.dart';
import 'package:advanced_flutter/core/defult_themes/themes.dart';
import 'package:advanced_flutter/core/widgets/buttonwidgetfunc.dart';
import 'package:advanced_flutter/core/widgets/text_form_func.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextForms extends StatefulWidget {
  const TextForms({super.key});

  @override
  State<TextForms> createState() => _nameState();
}

class _nameState extends State<TextForms> {
  bool observertext = true;
  
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 17.h),
            child: TextFormFunc(
              hintName: "Email",
            
              suffixIcon: Icon(Icons.email),
            ),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 17.h),
            child: TextFormFunc(
              hintName: "Password",
              obsecureText: observertext,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    observertext =!observertext;
                  });
                },
                child:observertext? Icon( Icons.visibility_off):Icon(Icons.visibility,color: Themes.defaultColor,),
              ),
            ),
          ),
      
        ],
      )
    ;
  }
}
