import 'package:flutter/material.dart';
import 'package:my_homeworks_and_asks/direct_page.dart';
import 'package:my_homeworks_and_asks/pages/lesson_eight_1.dart';
import 'package:my_homeworks_and_asks/pages/lesson_one_of_advaced.dart';
import 'package:my_homeworks_and_asks/pages/lesson_seven.dart';
import 'package:my_homeworks_and_asks/pages/lesson_seven_2.dart';
import 'package:my_homeworks_and_asks/pages/lesson_seven_signup_task3.dart';
import 'package:my_homeworks_and_asks/pages/lesson_sex.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      home: DirectPage(

      ),
      routes: {
        DirectPage.id: (context) => DirectPage(),
        LessonSex.id: (context) => LessonSex(),
        LessonSeven.id: (context) => LessonSeven(),
        LessonSeven2.id: (context) => LessonSeven2(),
        SignUpPage.id: (context) => SignUpPage(),
        LessonEight.id: (context) => LessonEight(),
        LessonOneOfAdvanced.id: (context) => LessonOneOfAdvanced(),
      },
     );
  }
}
