import 'package:flutter/material.dart';

class LessonOneOfAdvanced extends StatefulWidget {
  const LessonOneOfAdvanced({Key? key}) : super(key: key);
static const String id = "LessonOneOf";
  @override
  _LessonOneOfAdvancedState createState() => _LessonOneOfAdvancedState();
}

class _LessonOneOfAdvancedState extends State<LessonOneOfAdvanced> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('UI'),
      ),
      body: SafeArea(
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("User  ",style: TextStyle(fontSize: 35, color: Colors.redAccent),),
              Text("Interface",style: TextStyle(fontSize: 35, color: Colors.green),)
            ],
          ),
        ),
      ),
    );
  }
}
