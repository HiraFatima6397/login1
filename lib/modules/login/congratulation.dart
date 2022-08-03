import 'package:flutter/material.dart';
import 'package:login1/constant/color.dart';
import 'package:login1/constant/icons.dart';
import 'package:login1/constant/images.dart';
import 'package:login1/constant/string.dart';
import 'package:login1/constant/style.dart';

class Congratulation extends StatefulWidget {
  const Congratulation({Key? key}) : super(key: key);

  @override
  State<Congratulation> createState() => _CongratulationState();
}

class _CongratulationState extends State<Congratulation> {
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
            const BottomNavigationBarItem(
                icon: Icon(Icons.person_rounded,
                    color: AppColors.orange, size: 30),
                label: 'contect')
          ]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 44),
        child: Column(
          children: [
            Row(
              children: [
                Icon(AppIcons.arrow),
                SizedBox(
                  width: 30,
                ),
                Text(
                  StringConstant.explore,
                  style: AppStyles.regularText(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: AppColors.whatEverThunder),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Center(
                child: Text(
              StringConstant.congratulation,
              style: AppStyles.regularText(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: AppColors.whatEverThunder),
            )),
            Image.asset(
              AppImages.congratulation,
            ),
            SizedBox(
              height: 27,
            ),
            Text(
              StringConstant.youAreNowAPremium,
              style: AppStyles.regularText(
                  fontSize: 17, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 40,),
            Container(
              height: 58,
              width: 311,
              child: Center(
                  child: Text(
                    StringConstant.goToBuddee,
                    style: AppStyles.regularText(color: AppColors.white,fontSize: 20,fontWeight: FontWeight.w600),
                  )),
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
          ],
        ),
      ),
    );
  }
}
