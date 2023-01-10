import 'package:flutter/material.dart';

class FoodList extends StatelessWidget {
  final String price, image, title, subtitle;
  late double imageradius;

  FoodList(
      {Key? key,
      this.imageradius = 10,
      required this.price,
      required this.image,
      required this.title,
      required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var Screen=MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 30),
      child: SizedBox(
        width: Screen.width>600?Screen.width/2.2:Screen.width,
        height: Screen.width>600?Screen.width / 9:Screen.width/4,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: Screen.width>600?Screen.width / 9:Screen.width/4,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(imageradius),
              ),
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    subtitle,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    maxLines: 3,
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    '\$$price',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
              ],
            ),
                ))
          ],
        ),
      ),
    );
  }
}
