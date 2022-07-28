import 'package:flutter/material.dart';
import 'package:login1/constant/color.dart';
import 'package:login1/constant/icons.dart';
import 'package:login1/constant/images.dart';
import 'package:login1/constant/string.dart';
import 'package:login1/constant/style.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:login1/modules/login/on_boarding.dart';
import 'package:login1/modules/login/sign_up_about.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 45,

            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => OnBoarding()));
                    },
                    child: Icon(AppIcons.arrow)),
                SizedBox(height: 25.7,),
                Center(
                    child: Text(
                  StringConstant.helloAgain,
                  style: AppStyles.regularText(
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                      color: AppColors.helloBLueZodiac),
                )),
                SizedBox(
                  height: 8,
                ),
                Center(
                  child: Text(
                    StringConstant.signInTOYourAccount,
                    style:
                        AppStyles.regularText(fontSize: 14, color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: 34,
                ),
                Text(
                  StringConstant.emailAddress,
                  style: AppStyles.regularText(color: AppColors.whatEverThunder),
                ),
                SizedBox(
                  height: 8,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: StringConstant.profile,
                      hintStyle: AppStyles.regularText(
                          color: AppColors.textFieldQuillGrey),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12))),
                ),
                SizedBox(
                  height: 21,
                ),
                Text(
                  StringConstant.password,
                  style: AppStyles.regularText(color: AppColors.whatEverThunder),
                ),
                SizedBox(
                  height: 8,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: StringConstant.enterPassword,
                      hintStyle: AppStyles.regularText(
                          color: AppColors.textFieldQuillGrey),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12))),
                ),
                SizedBox(
                  height: 11,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    StringConstant.forgotYourPassword,
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.forgotPass),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                InkWell(onTap: (){
                  Navigator.of(context).pushNamed('/SignInAbout');
                },
                  child: Container(
                    height: 58,
                    child: Center(
                        child: Text(
                      StringConstant.signIn,
                      style: AppStyles.regularText(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: AppColors.white),
                    )),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        AppColors.createArtyClickOrange,
                        AppColors.createAccountCantaloupe
                      ], end: Alignment.topLeft, begin: Alignment.topRight),
                      boxShadow: [
                        BoxShadow(
                            color: AppColors.createAccountCantaloupe,
                            blurRadius: 12,
                            spreadRadius: 1,
                            offset: Offset(1, 3))
                      ],
                      borderRadius: BorderRadius.circular(40),
                      color: AppColors.createAccountCantaloupe,
                    ),
                  ),
                ),
                SizedBox(
                  height: 29,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DottedLine(
                      direction: Axis.horizontal,
                      lineLength: 128,
                      lineThickness: 1.0,
                      dashLength: 2.0,
                      dashColor: Colors.black,
                      dashRadius: 0.0,
                      dashGapLength: 5.0,
                      dashGapColor: Colors.transparent,
                      dashGapRadius: 0.0,
                    ),
                    SizedBox(width: 14,),
                    Text(
                      StringConstant.orWith,
                      style: AppStyles.regularText(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColors.orWithStarDust),
                    ),
                    SizedBox(width: 14,),

                    DottedLine(
                      direction: Axis.horizontal,
                      lineLength: 128,
                      lineThickness: 1.0,
                      dashLength: 2.0,
                      dashColor: Colors.black,
                      dashRadius: 0.0,
                      dashGapLength: 5.0,
                      dashGapColor: Colors.transparent,
                      dashGapRadius: 0.0,
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  height: 58,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 65),
                      child: Row(
                        children: [
                          Image.asset(AppImages.googleIcon,
                              height: 50, width: 30),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            StringConstant.signInWithGoogle,
                            style: AppStyles.regularText(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: AppColors.whatEverThunder),
                          ),
                        ],
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(width: 2),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 58,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 65),
                      child: Row(
                        children: [
                          Image.asset(AppImages.fbIcon, height: 50, width: 30),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            StringConstant.signInWithFacebook,
                            style: AppStyles.regularText(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: AppColors.whatEverThunder),
                          ),
                        ],
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(width: 2),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      StringConstant.donTHaveAccount,
                      style: AppStyles.regularText(color: AppColors.forgotPass),
                    ),
                    Text(
                      StringConstant.signUp,
                      style: AppStyles.regularText(color: AppColors.blue),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
