import 'package:flutter/material.dart';
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
  get pageLength => 4;

  get currentIndexPage => 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  StringConstant.buddee,
                  style: AppStyles.regularText(
                      fontSize: 28, fontWeight: FontWeight.w500),
                ),
              Spacer(),
              Image.asset(AppImages.explore,height: 30,width: 30,)

              ],
            ),
            SizedBox(height: 23,),
            Stack(children: [
              CarouselSlider(

                options: CarouselOptions(height: 367,enlargeCenterPage: true,),
                items: [1,2,3,4,5].map((i) {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
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(

                          ),
                          child: Image.asset(AppImages.explore2, )
                      );
                      
                    },
                  );
                }).toList(),
              ),
    ])
          ],
        ),
      ),
    );
  }
}
