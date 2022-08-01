import 'package:flutter/material.dart';
import 'package:login1/constant/color.dart';
import 'package:login1/constant/icons.dart';
import 'package:login1/constant/images.dart';
import 'package:login1/constant/string.dart';
import 'package:login1/constant/style.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  int _currentIndex = 0;
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
                    color: AppColors.person, size: 30),
                label: 'contect')
          ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 44),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(AppIcons.arrow),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    StringConstant.privacyPolicy,
                    style: AppStyles.regularText(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: AppColors.whatEverThunder),
                  )
                ],
              ),
              SizedBox(
                height: 41,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  StringConstant.effective,
                  style: AppStyles.regularText(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: AppColors.whatEverThunder),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
