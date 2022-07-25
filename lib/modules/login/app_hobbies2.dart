import 'package:flutter/material.dart';
import 'package:login1/constant/color.dart';
import 'package:login1/constant/icons.dart';
import 'package:login1/constant/images.dart';
import 'package:login1/constant/string.dart';
import 'package:login1/constant/style.dart';
import 'package:login1/modules/login/add_hobbies3.dart';

class AppHobbies2 extends StatefulWidget {
  const AppHobbies2({Key? key}) : super(key: key);

  @override
  State<AppHobbies2> createState() => _AppHobbies2State();
}

class _AppHobbies2State extends State<AppHobbies2> {
  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) => setState(() => _currentIndex = index),
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  AppImages.location,
                ),
                label: '',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Image.asset(
                  AppImages.like,
                ),
                label: 'like'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  AppImages.message,
                ),
                label: 'massage'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_rounded,
                    color: AppColors.person, size: 30),
                label: 'contect')
          ]),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 47.07, horizontal: 16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Icon(
              AppIcons.arrow,color: AppColors.arrow,
            ),
            SizedBox(
              height: 39.05,
            ),
            Center(
                child: Text(
              StringConstant.addHobbies,
              style: AppStyles.regularText(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: AppColors.whatEverThunder),
            )),
            SizedBox(
              height: 21,
            ),
            Text(
              StringConstant.search,
              style: AppStyles.regularText(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: AppColors.whatEverThunder),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: StringConstant.searchForHobbies,
                  prefixIcon: Icon(AppIcons.search),
                  hintStyle: AppStyles.regularText(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textFieldQuillGrey),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
            SizedBox(
              height: 21,
            ),
            Row(
              children: [
                Container(
                  height: 32,
                  width: 152,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.blue),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 9),
                    child: Text(StringConstant.badminton,
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16)),
                  ),
                ),
                SizedBox(
                  width: 169,
                ),
                Icon(
                  AppIcons.cross,
                  color: AppColors.person,
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              StringConstant.looking,
              style: AppStyles.regularText(
                  fontSize: 16, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 94,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                      width: 1, color: AppColors.textFieldQuillGrey)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.5,vertical: 11),
                child: Text(StringConstant.someInfoAbout,
                    style: AppStyles.regularText(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textFieldQuillGrey)),
              ),
            ),
                SizedBox(height: 100),
                InkWell(onTap: (){
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => AddHobbies3()));
                },
                  child: Container(
                    height: 58,
                    width: double.infinity,
                    child: Center(
                        child: Text(
                          StringConstant.save,
                          style: AppStyles.regularText(color: AppColors.white,fontWeight: FontWeight.w600,fontSize: 20),
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
          ]),
        ),
      ),
    );
  }
}
