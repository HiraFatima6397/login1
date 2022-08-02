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
  final List empty = [
  ];
  bool searchEnable = false;
  final TextEditingController _controller = TextEditingController();

  int _currentIndex = 0;
  List<String> item = [
    StringConstant.astronomy,
    StringConstant.birdwatching,
    StringConstant.badminton,
    StringConstant.camping,
    StringConstant.chess,
    StringConstant.dance,
    StringConstant.drawing,
    StringConstant.fitness,
    StringConstant.fishing,
    StringConstant.golf,
    StringConstant.hiking,
    StringConstant.kayaking,
    StringConstant.music,
    StringConstant.origami,
    StringConstant.photography,
    StringConstant.rockCliming,
    StringConstant.surfing,
    StringConstant.tennis,
    StringConstant.trainspotting,
    StringConstant.yoga,
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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Icon(
              AppIcons.arrow,
            ),
            SizedBox(
              height: 39.05,
            ),
            Center(
                child: InkWell(
              onTap: () {
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
            TextFormField(onTap: () {
        if(_controller.text.isEmpty){
        setState(() {
          searchEnable = true;
        });
        }
        },
            onChanged: (value){
              print("valueCheck ${value.length}");
              if(value.isEmpty){
                empty.clear();
                setState(() {
                });
              }
            },
            onFieldSubmitted: (value){
              empty.clear();
              for (var pc in item) {
                if (pc.contains(value)) empty.add(pc);
              }
              setState(() {
              });
            },
              decoration: InputDecoration(
                  hintText: StringConstant.searchForHobbies,
                  prefixIcon: Icon(AppIcons.search),
                  hintStyle: AppStyles.regularText(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textFieldQuillGrey),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  child: GridView.builder(
                      itemCount:
                      searchEnable ? empty.length : item.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio: 4,
                      ),
                      itemBuilder: (context, index) {
                        return _buildCardViewWidget(
                          item: item[index]
                        );
                      }),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

_buildCardViewWidget({
  required String item,
}) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        border: Border.all(
          width: 2,
        )),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(item,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
    ),
  );
}
