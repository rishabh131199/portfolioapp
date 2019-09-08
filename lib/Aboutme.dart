import 'package:flutter/material.dart';

class aboutme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Scaffold(
    backgroundColor: Colors.black ,
    appBar: AppBar(
    elevation: 0.0,
    title: Text("About me"),
    backgroundColor: Colors.black ,
    ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            aboutmee(),


          ],
        ),
      ),
    ),
    );
  }
}

class aboutmee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("EXPERIENCE",
          textScaleFactor: 3,
          style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold,),
        ),
        Text("As I am a fresher I only posses one thing in the name of experience\n"
            "which is all the success and failures I have been through,\n"
            "all the guidance I got from my parents, teachers and elders whenever\n"
            "there was a high or low in my life.",
          softWrap: true,
          textScaleFactor: 1.5,
          style: TextStyle(color: Colors.white),
        ),
        Padding(padding: EdgeInsets.all(10.0)),
        Text("SKILLS",
          textScaleFactor: 3,
          style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold,),
        ),
        Text("1. I have five stars in problem solving and C++ on hacker rank(Rank: 80000 in problem solving).\n"
            "2. I have done two courses on python from Michigan University on coursera.\n"
            "3. I have knowledge of flutter development also.\n"
            "4. Now I am working hard to dive deeper into the conceps of machine learning also.",
          softWrap: true,
          textScaleFactor: 1.5,
          style: TextStyle(color: Colors.white),
        ),
        Padding(padding: EdgeInsets.all(10.0)),
        Text("EDUCATION",
          textScaleFactor: 3,
          style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold,),
        ),
        Text("1. I have completed my 10th standard from SACRED HEART CONVENT HIGHER SECONDARY SCHOOL MATHURA and I passed my 12th standard from KANHA MAKHAN PUBLIC SCHOOL MATHURA.\n"
            "2. Currently I am pursing my BTECH from AJAY KUMAR GARG ENGINEERING COLLEGE GHAZIABAD.",
          softWrap: true,
          textScaleFactor: 1.5,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
