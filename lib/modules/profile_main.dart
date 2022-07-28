import 'package:flutter/material.dart';
import 'package:login1/constant/color.dart';
import 'package:login1/constant/icons.dart';
import 'package:login1/constant/images.dart';
import 'package:login1/constant/string.dart';
import 'package:login1/constant/style.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AppImages.profileBackground,
              fit: BoxFit.cover, width: double.infinity),
          Positioned(
              left: 25,
              top: 50,
              child: Text(
                StringConstant.myProfile,
                style: AppStyles.regularText(
                    fontSize: 21, fontWeight: FontWeight.w500),
              )),
          Positioned(
              left: 340,
              top: 50,
              child: Icon(
                AppIcons.outline,
                size: 40,
              )),
          Positioned(top: 100, left: 125, child: Image.asset(AppImages.man2)),
          Positioned(
              left: 150,
              top: 250,
              child: Text(
                StringConstant.jamesClark,
                style: AppStyles.regularText(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: AppColors.white),
              ))
        ],
      ),
    );
  }
}
