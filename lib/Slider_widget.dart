import 'package:flutter/material.dart';

class CustomSlider extends StatelessWidget {
  late String image;
  late EdgeInsets padding, margin, mainpadding;
  late double height, width, radius, boxheight, boxwidth;
  late List<Color> color;
  static const Color initial = Color(0xffd8392b);

  CustomSlider(
      {Key? key,
      required this.image,
      this.height = 0,
      this.width = 0,
      this.boxheight = 0,
      this.boxwidth = 0,
      this.padding = EdgeInsets.zero,
      this.margin = EdgeInsets.zero,
      this.mainpadding = EdgeInsets.zero,
      this.radius = 20,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var Screen = MediaQuery.of(context).size;
    return Padding(
      padding: mainpadding,
      child: Container(
        padding:
            padding == EdgeInsets.zero ? const EdgeInsets.all(15) : padding,
        margin: margin == EdgeInsets.zero ? const EdgeInsets.all(10) : margin,
        alignment: Alignment.center,
        width:boxwidth==0? Screen.width / 3.5:boxwidth,
        height: boxheight==0?(Screen.width>600?Screen.height/3:Screen.height/5):boxheight,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: color.length! < 2 ? [color[0], color[0]] : color,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          borderRadius: BorderRadius.all(
            Radius.circular(radius),
          ),
          color: Colors.grey.shade300,
        ),
        child: Image.asset(
          image,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
