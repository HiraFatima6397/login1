import 'package:flutter/material.dart';
import 'package:login1/constant/color.dart';
import 'package:login1/constant/icons.dart';
import 'package:login1/constant/images.dart';
import 'package:login1/constant/string.dart';
import 'package:login1/constant/style.dart';

class Premium extends StatefulWidget {
  const Premium({Key? key}) : super(key: key);

  @override
  State<Premium> createState() => _PremiumState();
}

class _PremiumState extends State<Premium> {
  List<String>titles = [
StringConstant.unlimitedLikes,
    StringConstant.unlimitedHobbies,
    StringConstant.changeYourLocation,
    StringConstant.seeProfileThat,
    StringConstant.seeIfYour,
  ];
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
      backgroundColor: AppColors.backGround2,
      body: Stack(alignment: Alignment.center, children: [
        Positioned(top: 650,
          child: InkWell(onTap: (){
            Navigator.of(context).pushNamed('/Bottom');
          },
            child: Container(
              height: 58,
              width: 311,
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
        ),
        Center(
            child: Text(
              StringConstant.save,
              style: AppStyles.regularText(color: AppColors.white,fontSize: 20,fontWeight: FontWeight.w600),
            )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 56),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                AppIcons.arrow,
                color: AppColors.arrow,
              ),
              Center(
                child: Text(
                  StringConstant.getPremium,
                  style: AppStyles.regularText(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      color: AppColors.whatEverThunder),
                ),
              ),
              Center(
                child: Text(
                  StringConstant.chooseYourPlan,
                  style: AppStyles.regularText(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.person),
                ),
              ),
            ],
          ),
        ),

        Positioned(
          left: 40,
          top: 150,
          child: Container(
            height: 400,
            width: 307,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: AppColors.blue),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      StringConstant.get,
                      style: AppStyles.regularText(
                          fontSize: 20, fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      StringConstant.s,
                      style: AppStyles.regularText(
                          fontSize: 32, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 40,
          top: 272,
          child: Center(
            child: Container(
                height: 360,
                width: 307,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                    ),
                    color: AppColors.white),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 25,
                  ),
                  child: Column(
                    children: [
                      Text(
                        StringConstant.saveUpTo,
                        style: AppStyles.regularText(
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                            color: AppColors.blue),
                      ),
                      Expanded(
                        child: ListView.builder(
                          physics: ClampingScrollPhysics(),
                          scrollDirection: Axis.vertical,

                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              width: 120,height: 60,
                              child: Card(
                                  child: Center(child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 45),
                                    child: Text(titles[index],style: AppStyles.regularText(fontSize: 16,fontWeight: FontWeight.w400)),
                                  ), )),
                            );
                          },
                        ),
                      ),

                    ],
                  ),
                )),
          ),
        ),
        Positioned(
          top: 240,
          left: 135,
          child: Container(
            height: 45,
            width: 130,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(29),
                boxShadow: [
                  BoxShadow(
                      color: AppColors.textFieldQuillGrey,
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(1, 3))
                ],
                color: AppColors.white),
            child: Center(
              child: Text(
                StringConstant.perMonth,
                style: AppStyles.regularText(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: AppColors.perMonth),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
