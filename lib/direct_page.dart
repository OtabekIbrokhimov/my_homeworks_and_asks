import 'package:flutter/material.dart';
import 'package:my_homeworks_and_asks/pages/lesson_eight_1.dart';
import 'package:my_homeworks_and_asks/pages/lesson_one_of_advaced.dart';
import 'package:my_homeworks_and_asks/pages/lesson_seven.dart';
import 'package:my_homeworks_and_asks/pages/lesson_seven_2.dart';
import 'package:my_homeworks_and_asks/pages/lesson_sex.dart';
import 'package:package_info_plus/package_info_plus.dart';

class DirectPage extends StatefulWidget {
  const DirectPage({Key? key}) : super(key: key);
  static const String id ="directPage";

  @override
  _DirectPageState createState() => _DirectPageState();
}

class _DirectPageState extends State<DirectPage> {



  List titles = ["Lesson 6: task 1,2,3","Lesson 7: task 1","Lesson 7: task 2","Lesson 8: task 1","Lesson 8, task 2","Flutter advanced Lesson: One task 1"];
  List pictures = [];
  List navigations = [LessonSex.id,LessonSeven.id,LessonSeven2.id,LessonEight.id,LessonEight.id,LessonOneOfAdvanced.id];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: const Text("My tasks",
        style: TextStyle(
            fontFamily:  "Billabong",
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.black,
    ),
      body: ListView(
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            itemCount: titles.length,
            itemBuilder: (BuildContext context, int index){
            return _itemList(index);
          },
          ),
        ],
      ),
    );
  }
  Widget _itemList(int index){
    return  Card(
      child: ListTile(
        contentPadding: EdgeInsets.all(15),
        title: Text(titles.elementAt(index),
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
        ),
        trailing: IconButton(
            onPressed: (){
              Navigator.of(context).pushNamed(navigations[index]);
            },
            icon: Icon(Icons.forward)
        ),
      ),
    );
  }
}
