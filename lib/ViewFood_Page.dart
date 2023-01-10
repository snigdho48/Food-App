import 'package:flutter/material.dart';
import 'package:food_app/Custom_Appbar.dart';
import 'package:food_app/floating_bar.dart';

import 'Foodlist_widget.dart';
import 'Page_Heading.dart';

class ViewFood extends StatelessWidget {
  static const routeName = 'foods';

  const ViewFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var Screen=MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppbar(context),
      bottomNavigationBar: const Floating_Bar(),
      body: Column(
        children: [
          Heading(image: 'images/pngegg4.png',),
          SizedBox(height: 10,),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.start,
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      FoodList(
                        imageradius: 20,
                        price: '5.00',
                        image: 'images/pngegg.png',
                        title: 'Fried Chicken',
                        subtitle:
                            '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.''',
                      ),
                      FoodList(
                        imageradius: 20,
                        price: '5.00',
                        image: 'images/pngegg1.png',
                        title: 'Fried Chicken',
                        subtitle:
                            '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.''',
                      ),
                      FoodList(
                        imageradius: 20,
                        price: '5.00',
                        image: 'images/pngegg2.png',
                        title: 'Fried Chicken',
                        subtitle:
                        '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.''',
                      ),
                      FoodList(
                        imageradius: 20,
                        price: '5.00',
                        image: 'images/pngegg3.png',
                        title: 'Fried Chicken',
                        subtitle:
                        '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.''',
                      ),
                      FoodList(
                        imageradius: 20,
                        price: '5.00',
                        image: 'images/pngegg4.png',
                        title: 'Fried Chicken',
                        subtitle:
                        '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.''',
                      ),

                    ],
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
