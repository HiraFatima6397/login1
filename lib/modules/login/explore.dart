import 'package:flutter/material.dart';
import 'package:login1/constant/color.dart';
import 'package:login1/constant/icons.dart';
import 'package:login1/constant/images.dart';
import 'package:login1/constant/string.dart';
import 'package:login1/constant/style.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  final pageLength2 = 5;
  double currentIndexPage2 = 0.0;

  final pageLength = 3;
  double currentIndexPage = 0.0;

  int _currentIndex = 0;
  List<String> images = [
    AppImages.explore2,
    AppImages.explore3,
  ];
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
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          StringConstant.buddee,
                          style: AppStyles.regularText(
                              fontSize: 28, fontWeight: FontWeight.w500),
                        ),
                        const Spacer(),
                        InkWell(onTap: (){
                          Navigator.of(context).pushNamed('/ExploreSetting');
                        },
                          child: Image.asset(
                            AppImages.explore,
                            height: 30,
                            width: 30,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 23,
                    ),
                    Stack(children: [
                      CarouselSlider(
                        options: CarouselOptions(
                          height: 367.0,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 40 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 800),
                          viewportFraction: 1,
                        ),
                        items: images
                            .map((item) => Container(
                                  child: Center(
                                      child: ClipRRect(borderRadius: BorderRadius.circular(15),
                                        child: Image.asset(item,
                                            fit: BoxFit.cover, width: 1000),
                                      )),
                                ))
                            .toList(),
                      ),
                      Positioned(
                        left: 73,
                        bottom: 16,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: AppColors.red2),
                              child: const Icon(AppIcons.clear,
                                  color: AppColors.white),
                            ),
                            const SizedBox(
                              width: 96,
                            ),
                            Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: AppColors.red),
                                child: const Icon(
                                  AppIcons.check,
                                  color: AppColors.white,
                                ))
                          ],
                        ),
                      ),
                      Center(
                        child: DotsIndicator(
                          decorator: const DotsDecorator(
                              color: AppColors.dot2,
                              activeColor: AppColors.white),
                          dotsCount: pageLength2,
                          position: currentIndexPage2,
                        ),
                      ),
                      Positioned(
                          bottom: 108,
                          left: 16,
                          child: Text(
                            StringConstant.tom,
                            style: AppStyles.regularText(
                                fontSize: 26,
                                fontWeight: FontWeight.w600,
                                color: AppColors.white),
                          )),
                      Positioned(
                        bottom: 88,
                        left: 16,
                        child: Row(
                          children: [
                            const Icon(Icons.directions,
                                color: AppColors.white),
                            Text(
                              StringConstant.away,
                              style: AppStyles.regularText(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.white),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 108,
                        left: 129,
                        child: Container(
                          height: 27,
                          width: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColors.orange),
                          child: const Icon(AppIcons.diamond,
                              color: AppColors.white, size: 15),
                        ),
                      )
                    ]),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(children: [
                      Text(
                        StringConstant.youGot3Hobbies,
                        style: AppStyles.regularText(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: AppColors.blue),
                      ),
                      Container(
                        height: 27,
                        width: 101,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            AppColors.createArtyClickOrange,
                            AppColors.createAccountCantaloupe
                          ], end: Alignment.topLeft, begin: Alignment.topRight),
                          boxShadow: const [
                            BoxShadow(
                              color: AppColors.createAccountCantaloupe,
                            )
                          ],
                          borderRadius: BorderRadius.circular(40),
                          color: AppColors.createAccountCantaloupe,
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                AppIcons.diamond,
                                color: AppColors.white,
                                size: 18,
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
                      )
                    ]),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 29,
                          width: 123,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: AppColors.blue),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 4, horizontal: 9),
                            child: Text(StringConstant.photography,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 16)),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          height: 29,
                          width: 110,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: AppColors.blue),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 4, horizontal: 9),
                            child: Text(StringConstant.badminton,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 16)),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          height: 29,
                          width: 88,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: AppColors.blue),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 4, horizontal: 9),
                            child: Text(StringConstant.surfing,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 16)),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Container(
                        height: 147,
                        width: 342,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),color: AppColors.containerInner,
                            border: Border.all(
                                width: 1, color: AppColors.container)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                StringConstant.photography,
                                style: AppStyles.regularText(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.blue),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Text(
                                StringConstant.noSpecificNiche,
                                style: AppStyles.regularText(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        )),
                    Center(
                      child: DotsIndicator(
                        decorator: const DotsDecorator(
                            color: AppColors.dot, activeColor: AppColors.blue),
                        dotsCount: pageLength,
                        position: currentIndexPage,
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Text(
                      StringConstant.tomOtherHobbies,
                      style: AppStyles.regularText(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: AppColors.whatEverThunder),
                    ),
                    SizedBox(height: 13,),
                    Row(
                      children: [


                        Container(
                          height: 29,
                          width: 109,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color: AppColors.whatEverThunder, width: 1.5)),
                          child: Center(child: Text(StringConstant.astronomy,style: AppStyles.regularText(fontSize: 14,fontWeight: FontWeight.w400),)),
                        ),
                        SizedBox(width: 8,),
                        Container(
                          height: 29,
                          width: 77,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color: AppColors.whatEverThunder, width: 1.5)),
                          child: Center(child: Text(StringConstant.surfing,style: AppStyles.regularText(fontSize: 14,fontWeight: FontWeight.w400),)),
                        ),
                      ],
                    ),
                    SizedBox(height: 28,),
                    Container(
                        height: 224,
                        width: 342,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),color: AppColors.containerInner,
                            border: Border.all(
                                width: 1, color: AppColors.container)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                StringConstant.astronomy,
                                style: AppStyles.regularText(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.blue),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Text(
                                StringConstant.astronomyIsThe,
                                style: AppStyles.regularText(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        )),
                  ]),
            )));
  }
}
