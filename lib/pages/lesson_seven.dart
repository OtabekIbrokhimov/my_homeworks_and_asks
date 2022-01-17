import 'package:flutter/material.dart';

class LessonSeven extends StatefulWidget {
  const LessonSeven({Key? key}) : super(key: key);
static const String id = "lessonseven";
  @override
  _LessonSevenState createState() => _LessonSevenState();
}

class _LessonSevenState extends State<LessonSeven> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(
      children: [
        SizedBox(height: 50,),
        Expanded(child: Container(
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/image3.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),

          ),
          child: Container(
            height: 200,
            width: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
              Text("  PDP ONLINE", style: TextStyle(fontSize: 25,color: Colors.white),),
          SizedBox(height: 20,),
          ],),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                  Colors.black.withOpacity(1),
              Colors.black.withOpacity(0.7),
              Colors.black.withOpacity(0.4),
              Colors.black.withOpacity(0.2),
              ],
            ),
          ),
          ),
        ),),
        Expanded(child: Container(
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/image3.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),

          ),
          child: Container(
            height: 200,
            width: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Text("  PDP ONLINE", style: TextStyle(fontSize: 25,color: Colors.white),),
                SizedBox(height: 20,),
              ],),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(1),
                  Colors.black.withOpacity(0.7),
                  Colors.black.withOpacity(0.4),
                  Colors.black.withOpacity(0.2),
                ],
              ),
            ),
          ),
        ),),
        Expanded(child: Container(
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/image3.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),

          ),
          child: Container(
            height: 200,
            width: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Text("  PDP ONLINE", style: TextStyle(fontSize: 25,color: Colors.white),),
                SizedBox(height: 20,),
              ],),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(1),
                  Colors.black.withOpacity(0.7),
                  Colors.black.withOpacity(0.4),
                  Colors.black.withOpacity(0.2),
                ],
              ),
            ),
          ),
        ),),
        SizedBox(height: 50,)
      ],
    ),
    );
  }
}
