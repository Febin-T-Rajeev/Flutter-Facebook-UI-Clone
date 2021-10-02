import 'package:flutter/material.dart';

Widget headerbutton({
  required String buttontext,
  required IconData buttonicon,
  required void Function() buttonaction,
  required Color buttoncolor,
}) {
  return FlatButton.icon(
      onPressed: buttonaction,
      icon: Icon(
        buttonicon,
        color: buttoncolor,
      ),
      label: Text(buttontext));
}
