import 'package:flutter/material.dart';

class Btn extends StatelessWidget {
  late double width, height, redius, textsize, borderwidth;
  late Color btncolor, textcolor;
  final String text, fontfamily;
  late FontWeight textweight;
  late EdgeInsets padding;
  late Function(bool) route;

  Btn(
      {Key? key,
      this.width = 0,
      this.height = 0,
      this.btncolor = Colors.green,
      this.textcolor = Colors.white,
      this.redius = 0,
      this.padding = EdgeInsets.zero,
      this.borderwidth = 0,
      this.textsize = 15,
      this.textweight = FontWeight.bold,
      this.fontfamily = '',
      required this.route,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        route(true) ;
      },
      child: Text(text),
      style: ElevatedButton.styleFrom(
        padding: padding,
        textStyle: TextStyle(
            fontSize: textsize, fontWeight: textweight, fontFamily: fontfamily),
        elevation: 0,
        backgroundColor: btncolor,
        foregroundColor: textcolor,
        fixedSize: width != 0 || height != 0 ? Size(width, height) : null,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(redius),
          ),
          side: BorderSide(width: borderwidth, color: Colors.red),
        ),
      ),
    );
  }
}
