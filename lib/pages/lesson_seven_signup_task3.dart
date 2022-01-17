import 'package:flutter/material.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);
  static const String id = "signup_page";

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                 //
                  // border: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal) ),
                  hintText: "Fullname",
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
                //  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal) ),
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
                child: Text("Sign up", style: TextStyle(fontSize: 16,color: Colors.white),),

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
                  Text("Sign up", style: TextStyle(fontSize: 16, color: Colors.black ),)
                ],
              ),
            ),

          ],
        ),
      ),
    );


  }
}
