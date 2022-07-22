import 'package:flutter/material.dart';
import 'package:login1/modules/login/sign_in.dart';
import 'package:login1/modules/login/sign_up_about.dart';

import 'modules/login/on_boarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const SignInAbout(),
    );
  }
}

