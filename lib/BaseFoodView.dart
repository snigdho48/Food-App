import 'package:flutter/material.dart';

class BaseFood extends StatelessWidget {
  late String text, image;
  late double height, width, positiontop, positionright,positionbottom,positionleft, textSize;
  late Color color, positionedcolor, textcolor;
  late FontWeight textweight;
  late EdgeInsets padding,positionedpadding;

  BaseFood({
    Key? key,
    required this.image,
    this.padding = EdgeInsets.zero,
    this.height = 0,
    this.width = 0,
    this.positiontop = -1,
    this.positionright = -1,
    this.positionbottom = -1,
    this.positionleft = -1,
    this.text = '',
    this.textweight = FontWeight.bold,
    this.textcolor = Colors.white,
    this.positionedpadding=EdgeInsets.zero,
    this.textSize = 15,
    this.color = Colors.grey,
    this.positionedcolor = Colors.redAccent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var Screen = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          color: color,
          height: height == 0 ? (Screen.width>600 ?Screen.width / 4.6:Screen.width / 2.3): height,
          width: width == 0 ? (Screen.width>600 ?Screen.width / 5:Screen.width / 2.5): width,
          child: Container(
            padding: padding,
            child: Image.asset(
              image,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        
        Positioned(
            top: positiontop,
            right: positionright,
            left: positionleft,
            // bottom: positionbottom,
            child: Container(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    color: positionedcolor,
                    padding: positionedpadding,
                    child: Text(
                      text,
                      style: TextStyle(
                          fontWeight: textweight,
                          fontSize: textSize,
                          color: textcolor),
                    ),
                  ),
                ],
              ),
            )),

      ],
    );
  }
}
