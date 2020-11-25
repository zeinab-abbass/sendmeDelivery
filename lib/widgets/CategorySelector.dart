import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget{

  @override
  _CategorySelectorState createState() => _CategorySelectorState();

}

class _CategorySelectorState extends State {
  int selector_index = 0;
  final List<String> categories = ["Messages", "Online", "Groups", "Requests"];

  @override
  Widget build(BuildContext context) {
    return
        Container(
          height: 90,
          color: Colors.pink,
          child: ListView.builder(
            //to make text widgets horizentally with scroll as a bar
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (BuildContext context, int index){
              //we wrap it by GestureDetector to add onTap method for each text widget when clicking on
              return GestureDetector(
                onTap: (){
                  setState(() {
                    selector_index = index;
                  });
                },
                child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Text(categories[index], style: TextStyle(color: index == selector_index ? Colors.white : Colors.white60, fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 1.5))
            ),
              ); }
          ),
        );
  }
}