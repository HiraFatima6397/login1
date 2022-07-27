import 'package:flutter/material.dart';
import 'package:login1/constant/color.dart';
import 'package:login1/constant/icons.dart';
import 'package:login1/constant/images.dart';
import 'package:login1/constant/string.dart';
import 'package:login1/constant/style.dart';

class AddPhotos extends StatefulWidget {
  const AddPhotos({Key? key}) : super(key: key);

  @override
  State<AddPhotos> createState() => _AddPhotosState();
}

class _AddPhotosState extends State<AddPhotos> {
  int _currentIndex = 0;
  List<String> image = [
    AppImages.man,
    AppImages.blank,
    AppImages.blank,
    AppImages.blank,
    AppImages.blank,
    AppImages.blank,
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
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 47),
                      child: const Icon(
                        AppIcons.arrow,
                        color: AppColors.arrow,
                      ),
                    ),
                    const SizedBox(
                      height: 36.07,
                    ),
                    Center(
                      child: Text(
                        StringConstant.addPhotos,
                        style: AppStyles.regularText(
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                            color: AppColors.whatEverThunder),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      height: 300,
                      child: GridView.count(
                        scrollDirection: Axis.vertical,
                        crossAxisCount: 3,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                        children: List.generate(image.length, (index) {
                          return _buildCardViewWidget(image: image[index]);
                        }),
                      ),
                    ),
                    SizedBox(
                      height: 88,
                    ),
                    Container(
                      height: 58,
                      width: double.infinity,
                      child: Center(
                          child: Text(
                        StringConstant.save,
                        style: AppStyles.regularText(
                            color: AppColors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
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
                  ],
                ))));
  }

  _buildCardViewWidget({required String image}) {
    return ClipRRect(borderRadius: BorderRadius.circular(8),
      child: Image.asset(
        image,
        fit: BoxFit.fill,alignment: Alignment.center,
      ),
    );
  }
}
