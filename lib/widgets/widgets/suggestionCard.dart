import 'package:flutter/material.dart';
import 'package:flutter_1/widgets/assets.dart';

class SuggestionCard extends StatelessWidget {
  final String profilePic;
  final String name;
  final String mutual;

  SuggestionCard(
      {required this.mutual, required this.name, required this.profilePic});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Stack(
        children: [
          suggestionImage(),
          suggestionDetails(),
        ],
      ),
    );
  }

  Widget suggestionDetails() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 140,
        decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border.all(
              width: 1,
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10))),
        child: Column(
          children: [
            ListTile(
              title: Text(name),
              subtitle: Text(mutual),
            ),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  iconbutton(
                      buttonAction: () {},
                      buttonIcon: Icons.account_box,
                      buttonTextColor: Colors.white,
                      buttonIconColor: Colors.white,
                      buttonText: "Add Friend"),
                  outlinedbtn(
                      buttonAction2: () {},
                      buttonTextColor2: Colors.blue,
                      buttonText2: "Remove")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget iconbutton(
      {required void Function() buttonAction,
      required IconData buttonIcon,
      required Color buttonTextColor,
      required buttonIconColor,
      required String buttonText}) {
    return FlatButton.icon(
      onPressed: buttonAction,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5))),
      icon: Icon(buttonIcon, color: buttonIconColor),
      label: Text(buttonText, style: TextStyle(color: buttonTextColor)),
      color: Colors.blue[700],
    );
  }

  Widget outlinedbtn(
      {required void Function() buttonAction2,
      required Color buttonTextColor2,
      required String buttonText2}) {
    return FlatButton(
      onPressed: buttonAction2,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5))),
      color: Colors.grey[300],
      child: Text(buttonText2, style: TextStyle(color: buttonTextColor2)),
    );
  }

  Widget suggestionImage() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          child: Image.asset(
            profilePic,
            height: 250,
            fit: BoxFit.cover,
          )),
    );
  }
}
