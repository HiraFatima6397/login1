import 'package:flutter/material.dart';
import 'package:login1/constant/color.dart';
import 'package:login1/constant/icons.dart';
import 'package:login1/constant/images.dart';
import 'package:login1/constant/string.dart';
import 'package:login1/constant/style.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  List<String> title = [
    StringConstant.unlimitedLikes,
    StringConstant.unlimitedHobbies,
    StringConstant.changeYourLocation,
    StringConstant.seeProfileThat,
    StringConstant.seeIfYour,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 53),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Icon(AppIcons.arrow),
          Center(
              child: InkWell(onTap: (){
                Navigator.of(context).pushNamed('/Congratulation');
              },
                child: Text(
            StringConstant.getPremium,
            style: AppStyles.regularText(
                  fontSize: 28, fontWeight: FontWeight.w500),
          ),
              )),
          SizedBox(
            height: 300,
            child: ListView.builder(
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: 5,
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    width: 120,
                    height: 60,
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: AppColors.orange,
                          ),
                          child: Icon(AppIcons.check, color: AppColors.white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(title[index],
                              style: AppStyles.regularText(
                                  fontSize: 16, fontWeight: FontWeight.w400)),
                        ),
                      ],
                    ),
                  );
                }),
          ),
          Center(
              child: Text(
            StringConstant.chooseYourPlan,
            style: AppStyles.regularText(
                fontSize: 28, fontWeight: FontWeight.w500),
          )),
          ElevatedButton(
            child: Text('choose your plan'),
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return SizedBox(
                    height: 300,
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.apple,
                              color: AppColors.whatEverThunder),
                          title: Text('pay',
                              style: AppStyles.regularText(
                                  fontSize: 18, fontWeight: FontWeight.w600)),
                          trailing: Text('cancle',
                              style: AppStyles.regularText(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.red2)),
                        ),
                        ListTile(
                          leading: Image.asset(AppImages.visa,
                              height: 40, width: 40),
                          title: Expanded(
                              child: Text('VISA AVO INFINITE (••••1234)')),
                          trailing: Icon(Icons. arrow_forward_ios, color: AppColors.red2),
                        ),
                        ListTile(
                          title: Center(child: Text('PAY GUACAMOLE S.R.O')),
                          trailing: Text('\$99,99'),
                        ),
                        ListTile(
                      title: Text('Confirm with Side Button'),
                          leading: Image.asset(AppImages.slideButton,
                              width: 40, height: 50),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ]),
      ),
    );
  }
}
