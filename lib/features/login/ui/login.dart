import 'package:advanced_flutter/core/defult_themes/textstyles.dart';
import 'package:advanced_flutter/core/widgets/buttonwidgetfunc.dart';
import 'package:advanced_flutter/features/login/ui/widgets/contenttext.dart';
import 'package:advanced_flutter/features/login/ui/widgets/icons_login_row.dart';
import 'package:advanced_flutter/features/login/ui/widgets/textform.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            ContentText(),
            SizedBox(height: 16.h,),
            TextForms(),
                SizedBox(height: 10.h),
        Padding(padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 16.h),
        child:   Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(value: true, onChanged: (val) {}),
                  Text("Remember ME?",style: TextStyles.font14textContentGray,),
                ],
              ),
              InkWell(child: Text("Forgot Password?",style: TextStyles.font12TextContentBlueLight)),
            ],
          ),),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 17.h),
          child: ButtonWidgetFunc(text: 'Login', func: () {  },),

        ),
        Center(
          child: InkWell(
            child: Image.asset(
              "asset/images/Text.png",
              fit: BoxFit.contain,
              width:327.w,
              height: 18.h,
            ),
          ),
        ),
        SizedBox(height: 24.h,),
      IconsLoginRow(),
      SizedBox(height: 24.h,),
        Center(
          child: Text.rich(
            textAlign: TextAlign.center,
            //By logging, you agree to our  Terms & Conditions and PrivacyPolicy.
            TextSpan(children: [
              TextSpan(text: "By logging, you agree to our ",style: TextStyles.font11grayRegular),
              TextSpan(text: " Terms & Conditions",style: TextStyles.font11BlackMedium),
              TextSpan(text: " and \n",style: TextStyles.font11grayRegular),
              TextSpan(text: "PrivacyPolicy.",style: TextStyles.font11BlackMedium),
            ])
          ),
        )
            ],
          ),
        ),
      ),
    );
  }
}
