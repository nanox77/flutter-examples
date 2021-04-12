import 'package:flutter/material.dart';

var orders = [
  OrderModel(
    name: 'Freddy\'s Burger',
    description:
        'Fakecon, BBQ sauce, chiplote dressing, cheddar cheese, red onion and crispy salad. Smashed Beyond Burger.',
    thumbnail: 'https://www.homeburgerbar.com/sites/default/files/imagenes/categoria_plato/hamburguesa-categoria.png',
    popularOrder: "Beyond Burger",
    distance: "1.2",
    priceRate: "4.3",
    color: Color.fromARGB(255, 240, 200, 200),
    popularRate: "4/2",
  ),
  OrderModel(
    name: 'Nano\'s Pizza',
    description: 'Neapolitan style. Mozzarella, oregano tomato sauce and olives.',
    thumbnail: 'https://pngimg.com/uploads/pizza/pizza_PNG7133.png',
    popularOrder: "Fakeroni",
    distance: "3",
    priceRate: "4.3",
    color: Color.fromARGB(255, 200, 205, 250),
    popularRate: "5",
  ),
  OrderModel(
    name: 'Tino\'s place',
    description: 'Grilled, with sliced peppers and red onion.',
    thumbnail: 'https://www.pngkey.com/png/full/15-157411_best-burritos-in-conway-imagenes-de-un-burrito.png',
    popularOrder: "Vegan Burrito",
    distance: "4.2",
    priceRate: "4.3",
    color: Color.fromARGB(255, 175, 205, 220),
    popularRate: "4/7",
  ),
];

class OrderModel {
  String name;
  String description;
  String thumbnail;
  String popularOrder;
  String distance;
  String priceRate;
  Color color;
  String popularRate;

  OrderModel(
      {this.name,
      this.description,
      this.thumbnail,
      this.popularOrder,
      this.distance,
      this.priceRate,
      this.color,
      this.popularRate});
}
