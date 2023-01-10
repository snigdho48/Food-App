import 'package:flutter/material.dart';

class Search_Box extends StatelessWidget {
  late Function(String) textvalue;

  Search_Box({Key? key, required this.textvalue}) : super(key: key);

  Widget build(BuildContext context) {
    TextEditingController search = TextEditingController();
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/15),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        onChanged: textvalue(search.text),
        controller: search,
        decoration: const InputDecoration(
          hintText: 'Search Food...',
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 18,
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey,
            size: 30,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
