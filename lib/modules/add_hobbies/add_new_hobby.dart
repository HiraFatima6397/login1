import 'package:flutter/material.dart';
import 'package:login1/constant/color.dart';
import 'package:login1/constant/icons.dart';
import 'package:login1/constant/images.dart';
import 'package:login1/constant/string.dart';
import 'package:login1/constant/style.dart';


class AddNewHobby extends StatefulWidget {
  const AddNewHobby({Key? key}) : super(key: key);

  @override
  State<AddNewHobby> createState() => _AddNewHobbyState();
}

class _AddNewHobbyState extends State<AddNewHobby> {
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
        body: SingleChildScrollView(
          child: SafeArea(
              child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 47.07, horizontal: 24.56),
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
                          StringConstant.addHobbies,
                          style: AppStyles.regularText(
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                              color: AppColors.whatEverThunder),
                        )),
                        SizedBox(
                          height: 36,
                        ),
                        Center(
                            child: Text(
                          StringConstant.youHaveThreeHobby,
                          style: AppStyles.regularText(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        )),
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
                                child: Text(StringConstant.badminton,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16)),
                              ),
                            ),
                            SizedBox(
                              width: 130,
                            ),
                            Icon(AppIcons.edit, color: AppColors.person),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              AppIcons.cross,
                              color: AppColors.person,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          StringConstant.interMediateLevel,
                          style: AppStyles.regularText(
                              fontWeight: FontWeight.w400, fontSize: 16),
                        ),
                        SizedBox(
                          height: 44,
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
                                child: Text(StringConstant.photography,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16)),
                              ),
                            ),
                            SizedBox(
                              width: 130,
                            ),
                            Icon(AppIcons.edit, color: AppColors.person),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              AppIcons.cross,
                              color: AppColors.person,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          StringConstant.iLoveLandscape,
                          style: AppStyles.regularText(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 44,
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
                              width: 130,
                            ),
                            Icon(AppIcons.edit, color: AppColors.person),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              AppIcons.cross,
                              color: AppColors.person,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          StringConstant.iTookUp,
                          style: AppStyles.regularText(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 40,),

                        InkWell(onTap: (){
                          Navigator.of(context)
                              .pushNamed('/NextStep');
                        },
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(
                                color: AppColors.addHobby,
                                width: 2,
                              ),
                            ),
                            child: Center(
                                child: Text(StringConstant.addNewHobby,
                                    style: AppStyles.regularText(
                                        color: AppColors.addHobby,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600))),
                          ),
                        ),
                        SizedBox(height: 24,),
                        Container(
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
                        )
                      ]))),
        ));
  }
}
