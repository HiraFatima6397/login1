import 'package:flutter/material.dart';
import 'package:login1/constant/color.dart';
import 'package:login1/constant/icons.dart';
import 'package:login1/constant/images.dart';
import 'package:login1/constant/string.dart';
import 'package:login1/constant/style.dart';

class Photo extends StatefulWidget {
  const Photo({Key? key}) : super(key: key);

  @override
  State<Photo> createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {
  @override
  Widget build(BuildContext context) {
    List<String> items = [
      AppImages.man,
      AppImages.pic1,
      AppImages.pic2,
      AppImages.blank,
      AppImages.blank,
      AppImages.blank,
    ];
    int _currentIndex = 0;
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
                      const Padding(
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
                      SizedBox(height: 42,),
                      SizedBox(
                        height: 300,
                        child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              mainAxisExtent: 150,
                            ),
                            itemCount: 6,
                            itemBuilder: (context, index) {
                              return Container(
                                height: 300,
                                child: Center(
                                    child: Image.asset(
                                  items[index],
                                  fit: BoxFit.cover,
                                )),
                              );
                            }),
                      ),
                      SizedBox(height: 96,),
                      Center(
                          child: Text(
                        StringConstant.setPhoto,
                        style: AppStyles.regularText(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.person),
                      )),
                      SizedBox(
                        height: 24,
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: AppColors.red),
                            child:
                                Icon(AppIcons.star, color: AppColors.white),
                          ),
                          SizedBox(
                            width: 79,
                          ),
                          InkWell(onTap: (){
                            Navigator.of(context).pushNamed('/Profile');
                          },
                            child: Container(
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: AppColors.green),
                              child:
                                  Icon(AppIcons.clear, color: AppColors.white),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4,),
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(StringConstant.mainPhoto,style: AppStyles.regularText(fontSize: 12,fontWeight: FontWeight.w500,color: AppColors.red),),
                          SizedBox(width: 57,),
                          Text(StringConstant.delete,style: AppStyles.regularText(fontSize: 12,fontWeight: FontWeight.w500,color: AppColors.green),)
                        ],
                      )
                    ]))));
  }
}
