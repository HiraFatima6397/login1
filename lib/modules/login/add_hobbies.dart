import 'package:flutter/material.dart';
import 'package:login1/constant/color.dart';
import 'package:login1/constant/icons.dart';
import 'package:login1/constant/images.dart';
import 'package:login1/constant/string.dart';
import 'package:login1/constant/style.dart';

class AddHobbies extends StatefulWidget {
  const AddHobbies({Key? key}) : super(key: key);

  @override
  State<AddHobbies> createState() => _AddHobbiesState();
}

class _AddHobbiesState extends State<AddHobbies> {
  int _currentIndex = 0;
  final List item = [
    {'title': 'Astronomy'},
    {'title': 'Birdwatching'},
    {'title': 'Badminton'},
    {'title': 'Camping'},
    {'title': 'Chess'},
    {'title': 'Dance'},
    {'title': 'Drawing'},
    {'title': 'Fitness'},
    {'title': 'Fishing'},
    {'title': 'Golf'},
    {'title': 'Hiking'},
    {'title': 'Kayaking'},
    {'title': 'Music'},
    {'title': 'Origaml'},
    {'title': 'Photography'},
    {'title': 'Rock climing'},
    {'title': 'Surfing'},
    {'title': 'Tennis'},
    {'title': 'Trainspotting'},
    {'title': 'Yoga'},
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
            BottomNavigationBarItem(
                icon: Icon(Icons.person_rounded,
                    color: AppColors.person, size: 30),
                label: 'contect')
          ]),
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 25.06, vertical: 44.07),
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
                  child: InkWell(onTap: (){
                    Navigator.of(context).pushNamed('/AppHobbies2');
                  },
                    child: Text(
                StringConstant.addHobbies,
                style: AppStyles.regularText(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      color: AppColors.whatEverThunder),
              ),
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
              TextField(
                decoration: InputDecoration(
                    hintText: StringConstant.searchForHobbies,prefixIcon: Icon(AppIcons.search),
                    hintStyle: AppStyles.regularText(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textFieldQuillGrey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),
              SizedBox(height: 15,),
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 4,
                      children: List.generate(item.length, (index) {
                        print('listlength:${item[index]['title']}');
                        return _buildCardViewWidget(
                          title: item[index]['title'],
                        );
                      }),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

_buildCardViewWidget({
  required String title,
}) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        border: Border.all(width: 2,)),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
    ),
  );
}
