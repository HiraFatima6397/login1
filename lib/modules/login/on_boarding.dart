import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login1/constant/color.dart';
import 'package:login1/constant/fonts.dart';
import 'package:login1/constant/images.dart';
import 'package:login1/constant/string.dart';
import 'package:login1/constant/style.dart';
import 'package:login1/modules/login/sign_in.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                AppImages.backGround,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                  left: -37,
                  top: 210,
                  width: 450,
                  height: 253,
                  child: Image.asset(
                    AppImages.buddee,
                  )),
            ],
          ),
          SizedBox(
            height: 57,
          ),
          Text(
            StringConstant.whatEverYourHobbies,
            style: TextStyle(
                color: AppColors.whatEverThunder,
                fontWeight: FontWeight.w500,
                fontSize: 20),
          ),
          Text(
            StringConstant.whatEverYourHobbies2,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: AppColors.whatEverThunder),
          ),
          SizedBox(
            height: 28,
          ),

    Container(
              height: 58,
              width: 311,
              child: Center(
                  child: Text(
                StringConstant.createAccount,
                style: AppStyles.regularText(color: AppColors.white),
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
          SizedBox(
            height: 17,
          ),
          InkWell(onTap: (){

              Navigator.of(context)
                  .pushNamed('/SignIn');},
            child: Text(
              StringConstant.signIn,
              style: AppStyles.regularText(color: AppColors.signInBlueJay),
            ),
          ),
        ],
      ),
    );
  }
}
