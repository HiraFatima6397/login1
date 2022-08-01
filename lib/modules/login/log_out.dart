import 'package:flutter/material.dart';
import 'package:login1/constant/icons.dart';
import 'package:login1/constant/images.dart';
import 'package:login1/constant/string.dart';
import 'package:login1/constant/style.dart';

class LogOut extends StatefulWidget {
  const LogOut({Key? key}) : super(key: key);

  @override
  State<LogOut> createState() => _LogOutState();
}

class _LogOutState extends State<LogOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            Image.asset(
              AppImages.bg,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 10,
              right: 20,
              child: Row(
                children: [
                  Icon(AppIcons.arrow),
                  SizedBox(
                    width: 30.05,
                  ),
                  InkWell(onTap: (){
                    Navigator.of(context).pushNamed('/Explore');
                  },
                    child: Text(StringConstant.myProfile,
                        style: AppStyles.regularText(
                            fontSize: 20, fontWeight: FontWeight.w500)),
                  ),
                  SizedBox(
                    width: 181,
                  ),
                  Icon(
                    AppIcons.clear,
                  ),
                  SizedBox(
                    height: 162,
                  ),
                ],
              ),
            ),
            Positioned(
                top: 220,
                left: 20,
                child: Row(
                  children: [
                    Text(
                      StringConstant.information,
                      style: AppStyles.regularText(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 190,
                    ),
                    InkWell(onTap: (){
                      Navigator.of(context).pushNamed('/Information');
                    },
                      child: Icon(
                        Icons.arrow_circle_right_outlined,
                        size: 40,
                      ),
                    ),


                  ],

                ),

            ),
            Positioned(top: 320,left: 20,
              child: Row(
                children: [
                  Text(
                    StringConstant.hobbies,
                    style: AppStyles.regularText(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 220,
                  ),
                  InkWell(onTap: (){
                    Navigator.of(context).pushNamed('/AddHobbies');
                  },
                    child: Icon(
                      Icons.arrow_circle_right_outlined,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(top: 420,left: 20,
              child: Row(
                children: [
                  Text(
                    StringConstant.searchSetting,
                    style: AppStyles.regularText(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 165,
                  ),
                  InkWell(onTap: (){
                    Navigator.of(context).pushNamed('/Search');
                  },
                    child: Icon(
                      Icons.arrow_circle_right_outlined,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(top: 520,left: 20,
              child: Row(
                children: [
                  Text(
                    StringConstant.privacyPolicy,
                    style: AppStyles.regularText(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 175,
                  ),
                  InkWell(onTap: (){
                    Navigator.of(context).pushNamed('/PrivacyPolicy');
                  },
                    child: Icon(
                      Icons.arrow_circle_right_outlined,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),

          ]
          ),
          SizedBox(height: 90,),
          Text(StringConstant.logout,style: AppStyles.regularText(fontWeight: FontWeight.w600,fontSize: 20,isUnderline: true),)
        ],
      ),
    );
  }
}
