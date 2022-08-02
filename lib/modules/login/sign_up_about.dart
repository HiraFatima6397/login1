import 'package:flutter/material.dart';
import 'package:login1/constant/color.dart';
import 'package:login1/constant/icons.dart';
import 'package:login1/constant/images.dart';
import 'package:login1/constant/string.dart';
import 'package:login1/constant/style.dart';

class SignInAbout extends StatefulWidget {
  const SignInAbout({Key? key}) : super(key: key);

  @override
  State<SignInAbout> createState() => _SignInAboutState();
}

class _SignInAboutState extends State<SignInAbout> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
            padding:
                const EdgeInsets.symmetric(horizontal: 25.06, vertical: 47.07),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    AppIcons.arrow,
                    color: AppColors.arrow,
                  ),
                  SizedBox(
                    height: 36.07,
                  ),
                  Center(
                      child: Text(
                    StringConstant.tellUsAboutABit,
                    style: AppStyles.regularText(
                        color: AppColors.whatEverThunder,
                        fontSize: 28,
                        fontWeight: FontWeight.w500),
                  )),
                  SizedBox(
                    height: 29,
                  ),
                  Text(
                    StringConstant.name,
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
                        hintText: StringConstant.name,
                        hintStyle: AppStyles.regularText(
                            color: AppColors.whatEverThunder,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12))),
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  Text(
                    StringConstant.dateOfBirth,
                    style: AppStyles.regularText(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.whatEverThunder),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: StringConstant.dateOfBirth,
                        hintStyle: AppStyles.regularText(
                          color: AppColors.whatEverThunder,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                        suffixIcon: Icon(
                          AppIcons.calender,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12))),
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  Text(
                    StringConstant.gender,
                    style: AppStyles.regularText(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: AppColors.whatEverThunder),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Container(
                    height: 58,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 1,
                          color: AppColors.textFieldQuillGrey,
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TabBar(
                          unselectedLabelColor: Colors.orange,
                          indicatorSize: TabBarIndicatorSize.tab,
                          indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Color(0xFF79e9fc)),
                          tabs: [
                            Tab(
                              child: Row(
                                children: [
                                  Icon(Icons.male, size: 30, color: Colors.black),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(StringConstant.male,
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black)),
                                ],
                              ),
                            ),
                            Tab(
                              child: Row(
                                children: [
                                  Icon(Icons.female,
                                      size: 30, color: Colors.black),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(StringConstant.female,
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16)),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                    ),
                  ),
                  //
                  SizedBox(
                    height: 85,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.of(context)
                          .pushNamed('/AddHobbies');
                    },
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(
                          color: AppColors.orange,
                          width: 2,
                        ),
                      ),
                      child: Center(
                          child: Text(StringConstant.nextStep,
                              style: AppStyles.regularText(
                                  color: AppColors.orange,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600))),
                    ),
                  )
                ],
              ),
         ),
          ),
        ),
      ),
    );
  }
}
