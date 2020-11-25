import 'dart:core';

import 'package:flutter/material.dart';

//item
class item{
  final String name;
  final double price;

  item({ this.name, this.price});
}

var item1 = item(
name: "Aricheh",
price: 7500
);

var item2 = item(
    name: "Olive Oil Soap Lavander",
    price: 5500
);

var item3 = item(
    name: "Halawe",
    price: 20000
);

var item4 = item(
    name: "AHoney",
    price: 123000
);

var item5 = item(
    name: "Necklace",
    price: 50000
);

var item6 = item(
    name: "Soap Bouqet",
    price: 88000
);

var item7 = item(
    name: "Fig Jam",
    price: 500000
);

List<item> items = [item1, item2, item3, item4, item5, item6, item7];

//category
List<String> categories = [ "SendMe Market", "Fresh Produce", "Fresh Daily Products", "Artisanal Products", "Plants and Seedlings", "Mouneh Baladiye", "Packaged Food", "Bakeries & Sweets", "Dekenet eh 7ay", "Agricultur supplies", "Made in Lebanon", "Whole Sale Market", "Homema de Food", "Pesonal Care", "Home Care Product"];

//seller
class _seller{
  final String name;
  final String description;

  _seller(this.name, this.description);

}

var seller1 = _seller("Fresh & Mouneh", "Fresh & Mouneh");
var seller2 = _seller("SendMe Market", "Best prices \n Market & More Best Quality And Prices");
var seller3 = _seller("Spread N Go", "Home Made Sweets");
var seller4 = _seller("Whisc n Batter", "Desserts and a wide variety of cakes");

List<_seller> sellers = [seller1, seller2,seller3,seller4];

