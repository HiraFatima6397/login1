 import 'package:flutter/material.dart';
import 'package:login1/modules/login/add_hobbies.dart';
import 'package:login1/modules/login/add_hobbies3.dart';
import 'package:login1/modules/login/add_hobbies_surfing.dart';
import 'package:login1/modules/login/add_new_hobby.dart';
import 'package:login1/modules/login/add_newhobbies_nextstep.dart';
import 'package:login1/modules/login/add_photos.dart';
import 'package:login1/modules/login/app_hobbies2.dart';
import 'package:login1/modules/login/mainphoto_deletephoto.dart';
import 'package:login1/modules/login/on_boarding.dart';
import 'package:login1/modules/login/sign_in.dart';
import 'package:login1/modules/login/sign_up_about.dart';

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