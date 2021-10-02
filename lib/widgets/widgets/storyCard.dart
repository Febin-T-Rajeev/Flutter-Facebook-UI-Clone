import 'package:flutter/material.dart';
import 'package:flutter_1/widgets/assets.dart';
import 'package:flutter_1/widgets/avatar.dart';
import 'package:flutter_1/widgets/circularButton.dart';

class StoryCard extends StatelessWidget {
  final String labelText;
  final String story;
  final String avatar;
  final bool createStoryStatus;
  final bool stborder;

  StoryCard({
    required this.labelText,
    required this.story,
    required this.avatar,
    this.createStoryStatus = false,
    this.stborder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(
        left: 10,
        right: 5,
        top: 10,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(story),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
              left: 5,
              top: 5,
              child: createStoryStatus
                  ? CircularButton(
                      buttonIcon: Icons.add,
                      buttonAction: () {},
                      color: Colors.green,
                    )
                  : Avatar(
                      pic: avatar,
                      displayStatus: false,
                      width: 35,
                      height: 35,
                      stborder: stborder,
                    )),
          Positioned(
              bottom: 10,
              left: 10,
              child: Text(
                labelText != null ? labelText : "N/A",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ))
        ],
      ),
    );
  }
}
