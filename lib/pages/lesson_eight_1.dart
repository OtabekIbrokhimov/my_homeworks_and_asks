import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class LessonEight extends StatefulWidget {
  const LessonEight({Key? key}) : super(key: key);
static const String id = 'lessonEigth';
  @override
  _LessonEightState createState() => _LessonEightState();
}

class _LessonEightState extends State<LessonEight> with SingleTickerProviderStateMixin{
   late AnimationController _controller;
   late Animation _myAnimation;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller= AnimationController(vsync: this, duration: Duration(milliseconds: 5000));
    _myAnimation = Tween<Offset>(
      begin: Offset.zero,
    end: const Offset(1.8, 0.0),

    ).animate(CurvedAnimation(parent: _controller, curve: Curves.bounceInOut));
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
      color: Colors.red,
      child: Center(
     //   child: SlideTransition(
         // opacity: _myAnimation,
        child: CircleAvatar(
          radius: 80,
          backgroundImage: AssetImage("assets/images/img_2.png"),

       // ),
          ),
      ),
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_circle_fill),
        onPressed: (){
          _controller.forward();
        },
      ),
    );
  }
}
