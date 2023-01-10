import 'package:flutter/material.dart';

import 'Search_Box.dart';

class Heading extends StatelessWidget {
  late String image;
  Heading({Key? key, this.image=''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var Screen=MediaQuery.of(context).size;
    return Container(
        height:  Screen.height/ 2.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(60),
            bottomRight: Radius.circular(60),
          ),
          color: Colors.grey.shade300,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Search_Box(
              textvalue: (String value) {},
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                width: Screen.height/2.5,
                child: Image.asset(image,fit: BoxFit.fill,),
              ),
            )
          ],
        ));
  }
}
