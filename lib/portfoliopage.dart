import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



//  ===============     my imports      ==================

import 'package:portfolio/Aboutme.dart';



class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.black ,
        appBar: AppBar(
          elevation: 0.0,
          title: Text("My Portfolio"),
          backgroundColor: Colors.black ,
        ),
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0.0),
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: Text("Rishabh Singh"),
                accountEmail: Text("rishabh131199@gmail.com"),
                currentAccountPicture: GestureDetector(
                  child: new CircleAvatar(
                    backgroundColor: Colors.orange,
                    child: Icon(Icons.person, color: Colors.black,),
                  ),
                ),
                decoration: new BoxDecoration(
                    color: Colors.black
                ),
              ),

              //body

              InkWell(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> new Portfolio()));},
                child: ListTile(
                  title: Text("Home Page"),
                  leading: Icon(
                      Icons.home,
                      color: Colors.orange,
                  ),
                ),
              ),

              InkWell(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> new aboutme()));},
                child: ListTile(
                  title: Text("About me"),
                  leading: Icon(
                    Icons.explore,
                    color: Colors.orange,
                  ),
                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text("Logout"),
                  leading: Icon(
                    Icons.directions_run,
                    color: Colors.orange,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              profile(),
        Padding(
          padding: EdgeInsets.all(10.0),
        ),
            socialmedias(),
            ],
          ),
        ),
      ),
    );
  }
}

var url;
_openURL(url)
{
launch(url);
}

class Buttons extends StatelessWidget {
  final text;
  final onPressed;
  final Color color;

  const Buttons(
      {Key key,
        @required this.text,
        @required this.onPressed,
        this.color = Colors.orange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      child: Text(text),
      borderSide: BorderSide(
        color: color,
      ),
      onPressed: onPressed,
      highlightedBorderColor: color,
    );
  }
}


class profile extends StatelessWidget {
  profileImage(context) => Container(
    height:200,width: 200,
    decoration: BoxDecoration(

//            borderRadius: BorderRadius.circular(40),
      shape: BoxShape.circle,
      image: DecorationImage(
        image: AssetImage("./images/i.jpg"),
        alignment: Alignment.center,
        fit: BoxFit.cover,
      ),
    ),
  );
  final profileData = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
    Text(
    "Hi there! My name is",
    textScaleFactor: 2,
    style: TextStyle(color: Colors.orange),
  ),
      Text(
  "Rishabh\nSingh",
  textScaleFactor: 5,
  style: TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  ),
  ),
  SizedBox(
  height: 10,
  ),
  Text(
  "I am a programmer, an aspiring engineer, technology geek and an individual with ideas.\n"
  "My interests include android development\n"
  "using flutter and machine learning.",
  softWrap: true,
  textScaleFactor: 1.5,
  style: TextStyle(color: Colors.white70),
  ),
  SizedBox(
  height: 20,
  ),
],
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        profileImage(context),
        SizedBox(
          height: MediaQuery
              .of(context)
              .size
              .height * 0.1,
        ),
        profileData,
      ],
    );
  }
  }

  class socialmedias extends StatelessWidget {
    List<Widget> socialbuttons() {
      return [
        Buttons(
          text: "Github",
          onPressed: () {_openURL("https://github.com/rishabh131199");},
          color: Colors.orange,
        ),
        Buttons(
          text: "Linkedin",
          onPressed: () {_openURL("https://www.linkedin.com/in/rishabh-singh-4b4810156/");},
          color: Colors.orange,
        ),
        Buttons(
          text: "Facebook",
          onPressed: () {_openURL("https://www.facebook.com/rishab.singh.3367174");},
          color: Colors.orange,
        ),
        Buttons(
          text: "Instagram",
          onPressed: () {_openURL("https://www.instagram.com/__rishaabh__/");},
          color: Colors.orange,
        ),
      ];
    }


    @override
    Widget build(BuildContext context) {
      return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
          ...socialbuttons(),

      ],
      );
    }
  }








