import 'package:flutter/material.dart';
const mycolor=Color(0xFFE0E0E0);

AppBar CustomAppbar (BuildContext context, {Color color=mycolor,bool hidden=false})=>AppBar(
  backgroundColor: color,
  elevation: 0,
  leading: hidden?null:IconButton(
    onPressed: () { Navigator.pop(context);},
    icon: const Icon(
      Icons.arrow_back_outlined,
      color: Colors.black54,
    ),
  ),
  actions: [
    Transform.scale(
      scaleX: -1,
      child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.short_text,
          color: Colors.black54,
          size: 30,
        ),
      ),
    ),
  ],
);
