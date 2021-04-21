import 'package:flutter/material.dart';

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
