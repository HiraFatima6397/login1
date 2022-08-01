import 'package:flutter/material.dart';
import 'package:login1/constant/color.dart';
import 'package:login1/constant/icons.dart';
import 'package:login1/constant/images.dart';
import 'package:login1/constant/string.dart';
import 'package:login1/constant/style.dart';

class Edit extends StatefulWidget {
  const Edit({Key? key}) : super(key: key);

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    return DefaultTabController(
        length: 3,
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
                  const BottomNavigationBarItem(
                      icon: Icon(Icons.person_rounded,
                          color: AppColors.person, size: 30),
                      label: 'contect')
                ]),
            body: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 25.06, vertical: 47.07),
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      const Icon(
                        AppIcons.arrow,
                        color: AppColors.arrow,
                      ),
                      const SizedBox(
                        height: 36.07,
                      ),
                      Center(
                          child: Text(
                        StringConstant.editHobbies,
                        style: AppStyles.regularText(
                            color: AppColors.whatEverThunder,
                            fontSize: 28,
                            fontWeight: FontWeight.w500),
                      )),
                      const SizedBox(
                        height: 29,
                      ),
                      Text(
                        StringConstant.letsDiscuss,
                        style: AppStyles.regularText(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: StringConstant.searchForHobbies,
                            prefixIcon: const Icon(AppIcons.search),
                            hintStyle: AppStyles.regularText(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: AppColors.textFieldQuillGrey),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12))),
                      ),
                      const SizedBox(
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
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 9),
                              child: Text(StringConstant.photography,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16)),
                            ),
                          ),
                          const SizedBox(
                            width: 165,
                          ),
                          const Icon(
                            AppIcons.cross,
                            color: AppColors.person,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(StringConstant.addDescription,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16)),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                          height: 153,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  width: 1,
                                  color: AppColors.textFieldQuillGrey)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 14.5, vertical: 12),
                            child: Text(
                              StringConstant.iLoveLandscape,
                              style: AppStyles.regularText(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          )),
                          const SizedBox(height: 104,),
                          InkWell(onTap: (){
                            Navigator.of(context).pushNamed('/SaveHobbies');
                          },
                            child: Container(
                              height: 58,
                              width: double.infinity,
                              child: Center(
                                  child: Text(
                                    StringConstant.save,
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
                          ),

                    ])))));
  }
}
