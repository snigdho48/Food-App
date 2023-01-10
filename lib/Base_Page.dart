import 'package:flutter/material.dart';
import 'package:food_app/BaseFoodView.dart';
import 'package:food_app/Custom_Appbar.dart';
import 'package:food_app/Home_page.dart';
import 'package:food_app/Slider_widget.dart';
import 'package:food_app/floating_bar.dart';

class BasePage extends StatelessWidget {
  static const routeName = 'basehome';

  const BasePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController mycontroller = ScrollController();
    WidgetsBinding.instance.addPostFrameCallback((_) async =>
        await Future.delayed(const Duration(seconds: 1, microseconds: 500))
            .then((value) => mycontroller
                    .animateTo(mycontroller.position.maxScrollExtent,
                        duration: const Duration(seconds: 3),
                        curve: Curves.ease)
                    .then((value) async {
                  await Future.delayed(const Duration(seconds: 2)).whenComplete(
                      () => mycontroller.animateTo(
                          mycontroller.position.minScrollExtent,
                          duration: const Duration(seconds: 3),
                          curve: Curves.ease));
                })));
    var Screen = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppbar(context, color: Colors.transparent, hidden: true),
      bottomNavigationBar: const Floating_Bar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(color: Colors.redAccent, width: 2))),
                  child: const Text(
                    'Fast Food',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Colors.redAccent),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: Screen.height / 30),
              child: const Text(
                'Choose your best food have a great day',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 25,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              controller: mycontroller,
              child: Row(
                children: [
                  InkWell(
                    onTap: () =>
                      Navigator.pushNamed(context, HomePage.routeName,arguments:'images/pngegg.png'),
                    
                    child: CustomSlider(
                      image: 'images/pngegg.png',
                      color: [Colors.red.shade300, Colors.red.shade900],
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                    ),
                  ),
                  InkWell(
                    onTap: () =>
                      Navigator.pushNamed(context, HomePage.routeName,arguments:'images/pngegg1.png'),
                    
                    child: CustomSlider(
                      image: 'images/pngegg1.png',
                      color: [Colors.red.shade300, Colors.red.shade900],
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                    ),
                  ),
                  InkWell(
                    onTap: () =>
                      Navigator.pushNamed(context, HomePage.routeName,arguments:'images/pngegg2.png'),
                    
                    child: CustomSlider(
                      image: 'images/pngegg2.png',
                      color: [Colors.red.shade300, Colors.red.shade900],
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                    ),
                  ),
                  InkWell(
                    onTap: () =>
                      Navigator.pushNamed(context, HomePage.routeName,arguments:'images/pngegg3.png'),
                    
                    child: CustomSlider(
                      image: 'images/pngegg3.png',
                      color: [Colors.red.shade300, Colors.red.shade900],
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                    ),
                  ),
                  InkWell(
                    onTap: () =>
                      Navigator.pushNamed(context, HomePage.routeName,arguments:'images/pngegg4.png'),
                    
                    child: CustomSlider(
                      image: 'images/pngegg4.png',
                      color: [Colors.red.shade300, Colors.red.shade900],
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: Screen.height / 35, horizontal: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'More',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Wrap(
                alignment: WrapAlignment.start,
                runAlignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.start,
                spacing: 30,
                runSpacing: 30,
                children: [
                  InkWell(
                    onTap: () =>
                        Navigator.pushNamed(context, HomePage.routeName,arguments:'images/pngegg.png'),
                    child: BaseFood(
                      color: Colors.grey.shade300,
                      image: 'images/pngegg.png',
                      padding: EdgeInsets.all(15),
                      text: 'NEW',
                      textSize: 12,
                      positionedpadding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    ),
                  ),
                  InkWell(
                    onTap: () =>
                        Navigator.pushNamed(context, HomePage.routeName,arguments:'images/pngegg1.png'),
                    child: BaseFood(
                      color: Colors.grey.shade300,
                      image: 'images/pngegg1.png',
                      padding: EdgeInsets.all(15),
                    ),
                  ),
                  InkWell(
                    onTap: () =>
                        Navigator.pushNamed(context, HomePage.routeName,arguments: 'images/pngegg2.png'),
                    child: BaseFood(
                      color: Colors.grey.shade300,
                      image: 'images/pngegg2.png',
                      padding: EdgeInsets.all(15),
                    ),
                  ),
                  InkWell(
                    onTap: () =>
                        Navigator.pushNamed(context, HomePage.routeName,arguments: 'images/pngegg3.png'),
                    child: BaseFood(
                      color: Colors.grey.shade300,
                      image: 'images/pngegg3.png',
                      padding: EdgeInsets.all(15),
                      text: 'NEW',
                      textSize: 12,
                      positionedpadding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    ),
                  ),
                  InkWell(
                    onTap: () =>
                        Navigator.pushNamed(context, HomePage.routeName,arguments: 'images/pngegg4.png'),
                    child: BaseFood(
                      color: Colors.grey.shade300,
                      image: 'images/pngegg4.png',
                      padding: EdgeInsets.all(15),
                      text: 'NEW',
                      textSize: 12,
                      positionedpadding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
