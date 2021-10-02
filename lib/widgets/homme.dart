import 'package:flutter/material.dart';
import 'package:flutter_1/widgets/assets.dart';
import 'package:flutter_1/widgets/circularButton.dart';
import 'package:flutter_1/widgets/postcard.dart';
import 'package:flutter_1/widgets/sections/headerButtonSection.dart';
import 'package:flutter_1/widgets/sections/room.dart';
import 'package:flutter_1/widgets/sections/statusSection.dart';
import 'package:flutter_1/widgets/sections/storySection.dart';
import 'package:flutter_1/widgets/sections/suggestionSection.dart';
import 'package:flutter_1/widgets/themes.dart';
import 'package:flutter_1/widgets/widgets/headerButton.dart';

class Home extends StatefulWidget {
  @override
  homeState createState() => homeState();
}

class homeState extends State<Home> {
  int _currentIndex = 0;
  Color butt = Colors.pink;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CustomTheme.lightTheme,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.blueAccent),
                title: Text(""),
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.people, color: Colors.grey[700]),
                title: Text(""),
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.people_alt_outlined, color: Colors.grey[700]),
                title: Text(""),
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.tv, color: Colors.grey[700]),
                title: Text(""),
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications, color: Colors.grey[700]),
                title: Text(""),
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.more_vert_outlined, color: Colors.grey[700]),
                title: Text(""),
                backgroundColor: Colors.white),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(
              buttonIcon: Icons.search,
              buttonAction: () {
                print("hello");
              },
            ),
            CircularButton(
              buttonIcon: Icons.message,
              buttonAction: () {
                print("hello");
              },
            )
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
            HeaderButtonSection(
                buttonOne: headerbutton(
                    buttontext: "Live",
                    buttonicon: Icons.video_call,
                    buttonaction: () {},
                    buttoncolor: Colors.red),
                buttonTwo: headerbutton(
                    buttontext: "Photos",
                    buttonicon: Icons.photo_library,
                    buttonaction: () {},
                    buttoncolor: Colors.green),
                buttonThree: headerbutton(
                    buttontext: "Room",
                    buttonicon: Icons.video_call,
                    buttonaction: () {},
                    buttoncolor: Colors.purple)),
            Divider(
              thickness: 10,
              color: Colors.grey[300],
            ),
            Room(),
            Divider(
              thickness: 10,
              color: Colors.grey[300],
            ),
            StorySection(),
            Divider(
              thickness: 10,
              color: Colors.grey[300],
            ),
            PostCard(
              varifiedpost: true,
              pics: sup,
              name: "Spiderman",
              time: "4h",
              postImage: bat,
              postTitle: "hai mahn get some sleep,",
              like: "15K",
              comments: "2K",
              share: "432",
            ),
            Divider(
              thickness: 10,
              color: Colors.grey[300],
            ),
            PostCard(
              varifiedpost: true,
              pics: bat,
              name: "Batman",
              time: "8h",
              postImage: sup,
              postTitle: "yoo bud",
              like: "30K",
              comments: "2K",
              share: "344",
            ),
            Divider(
              thickness: 10,
              color: Colors.grey[300],
            ),
            PostCard(
              varifiedpost: true,
              pics: sup,
              name: "Spiderman",
              time: "4h",
              postImage: bat,
              postTitle: "hai mahn get some sleep,",
              like: "15K",
              comments: "2K",
              share: "232",
            ),
            Divider(
              thickness: 10,
              color: Colors.grey[300],
            ),
            SuggestionSection(),
            Divider(
              thickness: 10,
              color: Colors.grey[300],
            ),
            PostCard(
              varifiedpost: true,
              pics: bat,
              name: "Batman",
              time: "8h",
              postImage: sup,
              postTitle:
                  "yooo baby how are you mahn... how you doin. come here mahn i have got some job for you dude..",
              like: "15K",
              comments: "2K",
              share: "211",
            ),
          ],
        ),
      ),
    );
  }
}
