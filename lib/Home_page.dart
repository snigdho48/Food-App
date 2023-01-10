import 'package:flutter/material.dart';
import 'package:food_app/Custom_Appbar.dart';
import 'package:food_app/Page_Heading.dart';
import 'package:food_app/ViewFood_Page.dart';
import 'package:food_app/floating_bar.dart';
import 'Custom_Button.dart';

class HomePage extends StatelessWidget {
  static const routeName = 'home';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: CustomAppbar(context),
      bottomNavigationBar: const Floating_Bar(),
      body: Column(
        children: [
          Heading(image: args),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    alignment: WrapAlignment.center,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Column(
                              children: const [
                                Text(
                                  'Fast Food',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 35),
                                ),
                                Text(
                                  '''Only Today's fast food offer''',
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                          Btn(
                            btncolor: Colors.transparent,
                            borderwidth: 2,
                            textsize: 20,
                            textcolor: Colors.red,
                            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                            redius: 10,
                            text: '\$5.00',
                            route: (value){},
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 20),
                            child: Column(
                              children: const [
                                Text(
                                  '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.''',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300, fontSize: 17),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Btn(
                    btncolor: Colors.red,
                    textsize: 20,
                    redius: 15,
                    height: 50,
                    width: MediaQuery.of(context).size.width / 1.35,
                    text: 'Order Now',
                    route: (value){
                      value?Navigator.pushNamed(context, ViewFood.routeName):null;
                    },
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
