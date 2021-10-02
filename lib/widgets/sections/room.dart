import 'package:flutter/material.dart';
import 'package:flutter_1/widgets/assets.dart';
import 'package:flutter_1/widgets/avatar.dart';

class Room extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            padding: EdgeInsets.only(right: 5,left: 5,),
            child: OutlinedButton.icon(
              icon: Icon(Icons.video_call, color: Colors.red),
              label: Text(
                "Create Room",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              onPressed: () {},
            ),
          ),
          Avatar(pic: bat,displayStatus: true,),
          Avatar(pic: sup,displayStatus: true),
          Avatar(pic: bat,displayStatus: true),
          Avatar(pic: sup,displayStatus: true),
          Avatar(pic: bat,displayStatus: true),
          Avatar(pic: sup,displayStatus: true),
          Avatar(pic: bat,displayStatus: true),
          Avatar(pic: sup,displayStatus: true),
          Avatar(pic: bat,displayStatus: true),
          Avatar(pic: sup,displayStatus: true),
        ],
      ),
    );
  }
}
