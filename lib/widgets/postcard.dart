import 'package:flutter/material.dart';
import 'package:flutter_1/widgets/assets.dart';
import 'package:flutter_1/widgets/avatar.dart';
import 'package:flutter_1/widgets/sections/headerButtonSection.dart';
import 'package:flutter_1/widgets/vaified.dart';
import 'package:flutter_1/widgets/widgets/headerButton.dart';

class PostCard extends StatelessWidget {
  final String pics;
  final String name;
  final String time;
  final String postTitle;
  final String postImage;
  final String like;
  final String comments;
  final String share;
  final bool varifiedpost;
  PostCard(
      {required this.pics,
      required this.name,
      required this.time,
      required this.share,
      required this.postImage,
      required this.postTitle,
      required this.like,
      required this.comments,
      required this.varifiedpost});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        postCardHeader(),
        titleSection(),
        imageSection(),
        footerSection(),
        Divider(
          thickness: 1,
          color: Colors.grey[300],
        ),
        HeaderButtonSection(
            buttonOne: headerbutton(
                buttontext: "Like",
                buttonicon: Icons.thumb_up_alt_outlined,
                buttonaction: () {},
                buttoncolor: Colors.grey),
            buttonTwo: headerbutton(
                buttontext: "comment",
                buttonicon: Icons.message_outlined,
                buttonaction: () {},
                buttoncolor: Colors.grey),
            buttonThree: headerbutton(
                buttontext: "share",
                buttonicon: Icons.share_outlined,
                buttonaction: () {},
                buttoncolor: Colors.grey))
      ],
    ));
  }

  Widget titleSection() {
    return postTitle != null && postTitle != ""
        ? Container(
            padding: EdgeInsets.only(bottom: 5, left: 10, right: 10),
            child: Text(
              postTitle == null ? "N/A" : postTitle,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          )
        : SizedBox();
  }

  Widget imageSection() {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: Image.asset(postImage),
    );
  }

  Widget footerSection() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  height: 15,
                  width: 15,
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 1,
                ),
                displayText(label: like),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayText(label: comments),
                SizedBox(
                  width: 5,
                ),
                displayText(label: "Comments"),
                SizedBox(
                  width: 10,
                ),
                displayText(label: share),
                SizedBox(
                  width: 5,
                ),
                displayText(label: "Share"),
                Avatar(
                  pic: bat,
                  displayStatus: false,
                  width: 25,
                  height: 25,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget displayText({required String label}) {
    return Text(
      label,
      style: TextStyle(
        color: Colors.grey[700],
      ),
    );
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(pic: pics, displayStatus: false),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(width: 10),
          varifiedpost ? Varfied() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(time != null ? time : "N/A"),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 15,
          )
        ],
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.more_horiz,
          color: Colors.grey[700],
        ),
      ),
    );
  }
}
