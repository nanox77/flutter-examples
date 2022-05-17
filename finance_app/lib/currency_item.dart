import 'package:flutter/material.dart';

class CurrencyItem {
  const CurrencyItem(
    this.name,
    this.symbol,
    this.color,
    this.percentage,
    this.price,
    this.url,
  );

  final String name;
  final String symbol;
  final Color color;
  final String percentage;
  final String price;
  final String url;
}
