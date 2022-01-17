import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LessonSex extends StatefulWidget {
  const LessonSex({Key? key}) : super(key: key);
static const String id = "lessonsexx";
  @override
  _LessonSexState createState() => _LessonSexState();
}

class _LessonSexState extends State<LessonSex> {
  List titles = ["chingiz","fayoz","Ulug'bek","abu","Ziyo","Anvar"];
  List messages = ["how is going", "that is so good idea","call me please","where are you? come to our metting", "please send that girl number","i have been waiting you for 2 hours"];
  List pictures = [
    "assets/images/image1.jpg",
    "assets/images/image2.jpg",
    "assets/images/image3.jpg",
    "assets/images/image4.jpg",
    "assets/images/image5.jpg",
    "assets/images/image6.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Messages",
          style: TextStyle(
            //  fontFamily:  "Billabong",
              color: Colors.white,
             // fontSize: 40,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueAccent,
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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        currentIndex: 0,
iconSize: 40.0,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: (){},
                icon: Icon(Icons.home),
            color: Colors.black,
            ),
            label: "home",

          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: (){},
              icon: Icon(Icons.message),
              color: Colors.black,

            ),
backgroundColor: Colors.red,
label: "Messages",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: (){},
              icon: Icon(Icons.tv_outlined),
              color: Colors.black,
            ),
label: "Video",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: (){},
              icon: Icon(Icons.notifications),
              color: Colors.black,
            ),
label: "Notifaction",
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage("assets/images/image1.jpg"),
                  ),
                  SizedBox(height: 10,),
                  Text("Otabek",style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold,color: Colors.white),),
                  SizedBox(height: 5,),
                  Text("@Ibrokhimov.gmail.com",style: TextStyle(fontSize: 15, color: Colors.white),)

                ],
              ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            ),
           ListTile(
             leading: IconButton(
               icon: Icon(Icons.home),
               onPressed: (){},
             ),
             title: Text("Home"),
           ),
            ListTile(
              leading: IconButton(
                icon: Icon(Icons.person),
                onPressed: (){},
              ),
              title: Text("Profile"),
            ),
            ListTile(
              leading: IconButton(
                icon: Icon(Icons.group),
                onPressed: (){},
              ),
              title: Text("Group"),
            )
          ],
        ),
      ),
    );
  }
  Widget _itemList(int index){
    return  Card(
      child: ListTile(
        leading:
          Container(
             height: 60,
             width: 60,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(pictures[index]),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(90),
            ),
          ),

        contentPadding: EdgeInsets.all(15),
        title: Text(titles.elementAt(index),
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),

        ),
        subtitle: Text(messages[index]),
        trailing: IconButton(
            onPressed: (){
            //  Navigator.of(context).pushNamed(navigations[index]);
            },
            icon: Icon(Icons.forward)
        ),
      ),

    );
  }
}



