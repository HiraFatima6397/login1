import 'package:flutter/material.dart';
import 'package:login1/constant/color.dart';
import 'package:login1/constant/icons.dart';
import 'package:login1/constant/images.dart';
import 'package:login1/constant/string.dart';
import 'package:login1/constant/style.dart';
import 'package:login1/modules/login/add_new_hobby.dart';

class AddHobbiesSurfing extends StatefulWidget {
  const AddHobbiesSurfing({Key? key}) : super(key: key);

  @override
  State<AddHobbiesSurfing> createState() => _AddHobbiesSurfingState();
}

class _AddHobbiesSurfingState extends State<AddHobbiesSurfing> {
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
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_rounded,
                      color: AppColors.person, size: 30),
                  label: 'contect')
            ]),
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 25.06, vertical: 44.07),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        AppIcons.arrow,
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
                      SingleChildScrollView(
                        child: TextField(
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
                      ),
                      SizedBox(
                        height: 24,
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
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 9),
                              child: Text(StringConstant.surfing,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16)),
                            ),
                          ),
                          SizedBox(
                            width: 160,
                          ),
                          Icon(
                            AppIcons.cross,
                            color: AppColors.person,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        StringConstant.looking,
                        style: AppStyles.regularText(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 132,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                                color: AppColors.textFieldQuillGrey, width: 1)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 24, horizontal: 16.24),
                          child: Text(
                            StringConstant.iTookUp,
                            style: AppStyles.regularText(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: AppColors.whatEverThunder),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Text(
                        StringConstant.youHaveChosenTwoHobbies,
                        style: AppStyles.regularText(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.whatEverThunder),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Container(
                            height: 32,
                            width: 152,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: AppColors.blue),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 9),
                              child: Text(StringConstant.badminton,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16)),
                            ),
                          ),
                          SizedBox(width: 8,),
                          Container(
                            height: 32,
                            width: 152,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: AppColors.blue),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 9),
                              child: Text(StringConstant.photography,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16)),
                            ),
                          ),


                        ],
                      ),
                      SizedBox(height: 18,),
                      InkWell(onTap: (){
                        Navigator.of(context)
                            .pushNamed('/AddNewHobby');
                      },
                        child: Container(
                          height: 50,

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
                    ]))));
  }
}
