import 'package:flutter/material.dart';

import 'lesson_seven_signup_task3.dart';

class LessonSeven2 extends StatefulWidget {
  const LessonSeven2({Key? key}) : super(key: key);
static const String id = "LessonSeven2";
  @override
  _LessonSeven2State createState() => _LessonSeven2State();
}

class _LessonSeven2State extends State<LessonSeven2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        width: double.infinity,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Instagram", style:  TextStyle(fontSize: 40,),),
            // Text("Insagram", style:  TextStyle(fontSize: 20,),),
           Container(
              margin: EdgeInsets.only(top: 20),
              height: 48,
              child: TextField(
                style:  TextStyle(fontSize: 16),
                decoration: InputDecoration (
                  contentPadding: EdgeInsets.all(10),
               //   border: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal) ),
                  hintText: "Email",
                  hintStyle: TextStyle(color: Colors.grey),

                ),
              ),
            ),
             Container(
              margin: EdgeInsets.only(top: 20),
              height: 48,
              child: TextField(
                style:  TextStyle(fontSize: 16),
                decoration: InputDecoration (
                  contentPadding: EdgeInsets.all(10),
                 // border: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal) ),
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.grey),

                ),
              ),
            ),
           Container(
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 48,
              child: MaterialButton(
                onPressed: (){
                  Navigator.of(context).pushNamed(SignUpPage.id);
                },
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                color: Colors.blue,
                textColor: Colors.white,
                child: Text("Log in", style: TextStyle(fontSize: 16,),),

              ),
            ),
           Container(
              margin: EdgeInsets.only(top: 10),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Don't have an account?", style: TextStyle(fontSize: 16, color: Colors.black),),
                  SizedBox(width: 10,),
                  Text("Sign up", style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold ),)
                ],
              ),
            ),

  ],
        ),
      ),
    );
  }
}
