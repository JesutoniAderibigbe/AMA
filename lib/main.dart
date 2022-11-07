import 'package:ama/pages/landing_pages/final_onboarding.dart';
import 'package:ama/pages/landing_pages/onboarding1.dart';
import 'package:ama/pages/landing_pages/onboarding2.dart';
import 'package:ama/pages/landing_pages/onboarding3.dart';
import 'package:ama/pages/landing_pages/onboarding4.dart';
import 'package:ama/pages/pagebuilder/pagebuilder.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: PageBuilder());
  }
}
