import 'package:flutter/material.dart';
import 'package:flutter_1/widgets/assets.dart';
import 'package:flutter_1/widgets/avatar.dart';

class StatusSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(pic: sup,displayStatus: false,),
      title: TextField(
        decoration: InputDecoration(
            hintText: "whats on your mind",
            hintStyle: TextStyle(
              color: Colors.black,
            ),
            disabledBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            focusedBorder: InputBorder.none),
      ),
    );
  }
}
