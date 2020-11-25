import 'package:carousel_slider/carousel_slider.dart';
import 'package:chat_app/models/Details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Categories extends StatefulWidget{

  @override
  _CategoriesState createState() => _CategoriesState();

}

class _CategoriesState extends State {

  int _currentIndex=0;

  List cardList=[
    Item1(),
    Item2(),
    Item3()
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget> [
                  Text('Categories' ,style: TextStyle( color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 1)),
                  ],
                ),
              ),
          ),
        Container(
          height: 70,
          color: Colors.white38,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (BuildContext context, int index){
              return Card(
                  elevation: 5,
                  child: Container(
                    height: 50,
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 50,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                            child: Image.asset("assets/images/category.png"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          child: Text(categories[index], style: TextStyle(fontSize: 10)),
                        )
                      ],
                    ),
                  ),
                );
            },
          ),
        ),
        SizedBox(height: 20,),
        CarouselSlider(
            height: 200.0,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
            aspectRatio: 2.0,
          items: cardList.map((card){
            return Builder(
                builder:(BuildContext context){
                  return Container(
                    height: MediaQuery.of(context).size.height*0.30,
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      color: Colors.white,
                      child: card,
                    ),
                  );
                }
            );
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: map<Widget>(cardList, (index, url) {
            return Container(
              width: 10.0,
              height: 10.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index ? Color(0xFF0D47A1) : Colors.grey,
              ),
            );
          }),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget> [
                Text('Top Selling Items' ,style: TextStyle( color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 1)),
              ],
            ),
          ),
        ),
        Container(
          height: 150,
          color: Colors.white38,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index){
              return Card(
                elevation: 5,
                child: Container(
                  height: 80,
                  width: 130,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 50,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          child: Image.asset("assets/images/item.jpg", width: 200, height: 200,),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Text(items[index].name, style: TextStyle(fontSize: 12)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Text(items[index].price.toString(), style: TextStyle(fontSize: 12)),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget> [
                Text('Top Sellers' ,style: TextStyle( color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 1)),
              ],
            ),
          ),
        ),
        Container(
          height: 150,
          color: Colors.white38,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: sellers.length,
            itemBuilder: (BuildContext context, int index){
              return Card(
                elevation: 5,
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage("assets/images/seller.png",)
                          )
                        ),
                      ),
                      Column(
                        children:[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 10),
                          child: Text(sellers[index].name, style: TextStyle(fontSize: 12)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          child: Text(sellers[index].description, style: TextStyle(fontSize: 12)),
                        )
                      ])
                    ],
                  ),
                ),
              );
            },
          ),
        ),
    ]
    );
  }
}

class Item1 extends StatelessWidget {
  const Item1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/images/sendme.png',
            height: 180.0,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}

class Item2 extends StatelessWidget {
  const Item2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/images/s1.jpg',
            height: 180.0,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}

class Item3 extends StatelessWidget {
  const Item3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/images/s2.jpg',
            height: 180.0,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}