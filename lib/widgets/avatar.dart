import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String pic;
  final bool displayStatus;
  final double height;
  final double width;
  final bool stborder;
  Avatar(
      {required this.pic,
      required this.displayStatus,
      this.height = 50,
      this.width = 50,
      this.stborder = false});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: stborder
                ? Border.all(
                    color: Colors.blueAccent,
                    width: 3,
                  )
                : Border(),
          ),
          padding: EdgeInsets.only(right: 4, left: 4),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              pic,
              fit: BoxFit.cover,
              width: width,
              height: height,
            ),
          ),
        ),
        displayStatus == true
            ? Positioned(
                bottom: 0,
                right: 1,
                child: Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ))),
              )
            : SizedBox()
        // statusIndicator,
      ],
    );
  }
}
