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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(AppImages.profileBackground,
                    fit: BoxFit.cover, width: double.infinity),
                Positioned(
                    left: 25,
                    top: 50,
                    child: InkWell(onTap: (){
                      Navigator.of(context).pushNamed('/LogOut');
                    },
                      child: Text(
                        StringConstant.myProfile,
                        style: AppStyles.regularText(
                            fontSize: 21, fontWeight: FontWeight.w500),
                      ),
                    )),
                const Positioned(
                    left: 340,
                    top: 50,
                    child: Icon(
                      AppIcons.outline,
                      size: 40,
                    )),
                Positioned(
                    top: 100, left: 125, child: Image.asset(AppImages.man2)),
                Positioned(
                    left: 150,
                    top: 250,
                    child: Text(
                      StringConstant.jamesClark,
                      style: AppStyles.regularText(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: AppColors.white),
                    )),
                Positioned(
                    left: 170,
                    top: 280,
                    child: Row(
                      children: [
                        const Icon(
                          AppIcons.location,
                          size: 20,
                        ),
                        Text(
                          StringConstant.london,
                          style: AppStyles.regularText(
                              fontWeight: FontWeight.w400, fontSize: 14),
                        ),
                      ],
                    )),
                Positioned(
                  top: 310,
                  left: 155,
                  child: Container(
                    height: 27,
                    width: 101,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            AppIcons.diamond,
                            color: AppColors.white,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            StringConstant.premium,
                            style: AppStyles.regularText(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.white,
                            ),
                          ),
                        ]),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [
                        AppColors.createArtyClickOrange,
                        AppColors.createAccountCantaloupe
                      ], end: Alignment.topLeft, begin: Alignment.topRight),
                      boxShadow: const [
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
                Positioned(left: 235,top: 195,child: Container(height: 40,width: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: AppColors.whatEverThunder),child: Icon(AppIcons.camera, color: AppColors.white,)),),

              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16,),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      StringConstant.addHobbies,
                      style: AppStyles.regularText(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: AppColors.whatEverThunder,
                      ),
                    ),
                  ),

              const SizedBox(height: 21,),
              Container(
                height: 32,
                width: 152,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.lightBlue),
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 4, horizontal: 9),
                  child: Text(StringConstant.badminton,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16)),
                ),
              ),
              const SizedBox(
                width: 130,
              ),
              const SizedBox(
                height: 16,
              ),
              Container(height: 140,width: 343,color:AppColors.containerBlue,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                  child: Text(
                    StringConstant.interMediateLevel,
                    style: AppStyles.regularText(
                        fontWeight: FontWeight.w400, fontSize: 16,color: AppColors.whatEverThunder,),
                  ),
                ),
              ),
                  const SizedBox(height: 48,),
                  Container(
                    height: 32,
                    width: 152,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.blue),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 4, horizontal: 9),
                      child: Text(StringConstant.photography,
                          style:  TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16)),
                    ),
                  ),

          ],
        ),
            ),
     ] ),
      ));
  }
}
