 import 'package:flutter/material.dart';
import 'package:login1/modules/add_hobbies/add_hobbies3.dart';
import 'package:login1/modules/login/add_photos.dart';
import 'package:login1/modules/add_hobbies/app_hobbies2.dart';
import 'package:login1/modules/login/edit_hobbies.dart';
import 'package:login1/modules/login/explore.dart';
import 'package:login1/modules/login/explore_setting.dart';
import 'package:login1/modules/login/information.dart';
import 'package:login1/modules/login/log_out.dart';
import 'package:login1/modules/login/mainphoto_deletephoto.dart';
import 'package:login1/modules/login/on_boarding.dart';
import 'package:login1/modules/login/privacy_policy.dart';
import 'package:login1/modules/login/save_hobbies.dart';
import 'package:login1/modules/login/search_setting.dart';
import 'package:login1/modules/login/sign_in.dart';
import 'package:login1/modules/login/sign_up_about.dart';
import 'package:login1/modules/login/profile_main.dart';

import '../modules/add_hobbies/add_hobbies.dart';
import '../modules/add_hobbies/add_hobbies_surfing.dart';
import '../modules/add_hobbies/add_new_hobby.dart';
import '../modules/add_hobbies/add_newhobbies_nextstep.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const OnBoarding());
      case '/SignIn':
        return MaterialPageRoute(builder: (_) => const SignIn());
      case '/SignInAbout':
        return MaterialPageRoute(builder: (_) => const SignInAbout());
      case '/AddHobbies':
        return MaterialPageRoute(builder: (_) => const AddHobbies());
      case '/AppHobbies2':
        return MaterialPageRoute(builder: (_) => const AppHobbies2());
      case '/AddHobbies3':
        return MaterialPageRoute(builder: (_) => const AddHobbies3());
      case '/AddHobbiesSurfing':
        return MaterialPageRoute(builder: (_) => const AddHobbiesSurfing());
      case '/AddNewHobby':
        return MaterialPageRoute(builder: (_) => const AddNewHobby());
      case '/NextStep':
        return MaterialPageRoute(builder: (_) => const NextStep());
      case '/AddPhotos':
        return MaterialPageRoute(builder: (_) => const AddPhotos());
      case '/Photo':
        return MaterialPageRoute(builder: (_) => const Photo());
      case '/Profile':
        return MaterialPageRoute(builder: (_) => const Profile());
      case '/LogOut':
        return MaterialPageRoute(builder: (_) => const LogOut());
      case '/Information':
        return MaterialPageRoute(builder: (_) => const Information());
      case '/Search':
        return MaterialPageRoute(builder: (_) => const Search());
      case '/Edit':
        return MaterialPageRoute(builder: (_) => const Edit());
      case '/SaveHobbies':
        return MaterialPageRoute(builder: (_) => const SaveHobbies());
      case '/PrivacyPolicy':
        return MaterialPageRoute(builder: (_) => const PrivacyPolicy());
      case '/Explore':
        return MaterialPageRoute(builder: (_) => const Explore());
      case '/ExploreSetting':
        return MaterialPageRoute(builder: (_) => const ExploreSetting());

      default:
        return MaterialPageRoute(
            builder: (_) =>
                Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }

}
