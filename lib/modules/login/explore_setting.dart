import 'package:flutter/material.dart';
import 'package:login1/constant/color.dart';
import 'package:login1/constant/icons.dart';
import 'package:login1/constant/images.dart';
import 'package:login1/constant/string.dart';
import 'package:login1/constant/style.dart';
class ExploreSetting extends StatefulWidget {
  const ExploreSetting({Key? key}) : super(key: key);

  @override
  State<ExploreSetting> createState() => _ExploreSettingState();
}

class _ExploreSettingState extends State<ExploreSetting> {
  List<String>title=[
    StringConstant.badminton,
    StringConstant.photography,
    StringConstant.surfing,
  ];
  int _value = 6;
  double start = 30.0;
  double end = 50.0;
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
          body: SafeArea(
              child: Padding(
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
                              StringConstant.searchSetting,
                              style: AppStyles.regularText(
                                  color: AppColors.whatEverThunder,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w500),
                            )),
                        const SizedBox(
                          height: 21,
                        ),
                        Container(
                          height: 116,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                width: 1,
                                color: AppColors.textFieldQuillGrey,
                              )),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(StringConstant.gender,
                                    style: AppStyles.regularText(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500)),
                                const SizedBox(
                                  height: 16,
                                ),
                                TabBar(
                                    unselectedLabelColor: Colors.orange,
                                    indicatorSize: TabBarIndicatorSize.tab,
                                    indicator: BoxDecoration(
                                        borderRadius: BorderRadius.circular(9),
                                        color: const Color(0xFF79e9fc)),
                                    tabs: const [
                                      Tab(
                                        child: Center(
                                          child: Text(StringConstant.male,
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.black)),
                                        ),
                                      ),
                                      Tab(
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(StringConstant.female,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16)),
                                        ),
                                      ),
                                      Tab(
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(StringConstant.both,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16)),
                                        ),
                                      ),
                                    ]),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Container(
                          height: 184,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                width: 1,
                                color: AppColors.textFieldQuillGrey,
                              )),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(StringConstant.distance,
                                        style: AppStyles.regularText(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500)),
                                    const Spacer(),
                                    Text(StringConstant.distance35,
                                        style: AppStyles.regularText(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400)),
                                  ],
                                ),
                                const SizedBox(
                                  height: 28,
                                ),
                                Row(
                                  children: [
                                    Text(StringConstant.max,
                                        style: AppStyles.regularText(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400)),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Container(
                                        height: 48,
                                        width: 94,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(10),
                                            border: Border.all(
                                              width: 1,
                                              color:
                                              AppColors.textFieldQuillGrey,
                                            )),
                                        child: Center(
                                          child: Text(StringConstant.m35,
                                              style: AppStyles.regularText(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400)),
                                        ))
                                  ],
                                ),
                                Slider(
                                  value: _value.toDouble(),
                                  min: 1.0,
                                  max: 10.0,
                                  divisions: 5,
                                  activeColor: AppColors.blue,
                                  inactiveColor: AppColors.textFieldQuillGrey,
                                  onChanged: (double newValue) {
                                    setState(() {
                                      _value = newValue.round();
                                    });
                                  },
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 24,),
                        Container(
                            height: 184,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  width: 1,
                                  color: AppColors.textFieldQuillGrey,
                                )),
                            child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(StringConstant.age,
                                            style: AppStyles.regularText(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500)),
                                        const Spacer(),
                                        Text(StringConstant.ageLimit,
                                            style: AppStyles.regularText(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400)),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 28,
                                    ),
                                    Row(
                                      children: [
                                        Text(StringConstant.from,
                                            style: AppStyles.regularText(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400)),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        Container(
                                            height: 48,
                                            width: 94,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                                border: Border.all(
                                                  width: 1,
                                                  color: AppColors
                                                      .textFieldQuillGrey,
                                                )),
                                            child: Center(
                                              child: Text(StringConstant.f21,
                                                  style: AppStyles.regularText(
                                                      fontSize: 16,
                                                      fontWeight:
                                                      FontWeight.w400)),
                                            )),
                                        const SizedBox(width: 33,),
                                        Text(StringConstant.to,
                                            style: AppStyles.regularText(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400)),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        Container(
                                            height: 48,
                                            width: 94,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                                border: Border.all(
                                                  width: 1,
                                                  color: AppColors
                                                      .textFieldQuillGrey,
                                                )),
                                            child: Center(
                                              child: Text(StringConstant.t37,
                                                  style: AppStyles.regularText(
                                                      fontSize: 16,
                                                      fontWeight:
                                                      FontWeight.w400)),
                                            ))
                                      ],
                                    ),
                                    RangeSlider(activeColor: AppColors.blue,
                                      inactiveColor: AppColors.textFieldQuillGrey,
                                      values: RangeValues(start, end),
                                      labels: RangeLabels(start.toString(), end.toString()),
                                      onChanged: (value) {
                                        setState(() {
                                          start = value.start;
                                          end = value.end;
                                        });
                                      },
                                      min: 10.0,
                                      max: 80.0,
                                    ),


                                  ],

                                ))),
                        const SizedBox(height: 24,),
                        ListView.builder(itemCount: 3,scrollDirection: Axis.horizontal,itemExtent: 100,
                            itemBuilder: ((BuildContext context, index){
                          return _buildListWidget(title: title[index],
                          );
                        } )),



                        InkWell(onTap: (){
                          Navigator.of(context).pushNamed('/Edit');
                        },
                          child: Container(
                            height: 58,
                            width: double.infinity,
                            child: Center(
                                child: Text(
                                  StringConstant.apply,
                                  style: AppStyles.regularText(color: AppColors.white,fontWeight: FontWeight.w600,fontSize: 20),
                                )),
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(colors: [
                                AppColors.createArtyClickOrange,
                                AppColors.createAccountCantaloupe
                              ], end: Alignment.topLeft, begin: Alignment.topRight),
                              boxShadow: const[
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

                      ],
                    ),
                  )))),
    );
  }
}
_buildListWidget(
{required String title,
}
){
  return   Column(
    children: [
      Container(
        height: 29,
        width: 88,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.blue),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: 4, horizontal: 9),
          child: Text(title,
              style: const TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 16)),
        ),
      ),
    ],
  );
}