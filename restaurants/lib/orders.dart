import 'package:flutter/material.dart';
import 'package:restaurants/order_model.dart';

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
  OrderModel(
    name: 'Sushi Shi',
    description: 'Best sushi ever you tasted.',
    thumbnail:
        'https://d3ugyf2ht6aenh.cloudfront.net/stores/186/318/products/sushi-png-image1-af63eda5520a55792815132853795393-640-0.png',
    popularOrder: "Salmon sushi",
    distance: "1.2",
    priceRate: "4.9",
    color: Color.fromARGB(255, 175, 205, 180),
    popularRate: "4/1",
  ),
  OrderModel(
    name: 'Porky Ribs',
    description: 'Ribs with BBQ sauce with french fries.',
    thumbnail: 'https://fostershollywood.es/sites/default/files/images/product/national-ribs-de-cerdo.png',
    popularOrder: "BBQ Ribs",
    distance: "2.3",
    priceRate: "3.5",
    color: Color.fromARGB(255, 160, 185, 210),
    popularRate: "4/0",
  ),
];
