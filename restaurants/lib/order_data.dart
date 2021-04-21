import 'package:flutter/material.dart';
import 'package:restaurants/order_model.dart';

class OrderData extends ChangeNotifier {
  List<OrderModel> _orders = [];

  int get ordersQuantity => _orders.length;

  void addOrder(OrderModel orderModel, int quantity) {
    for (var i = 0; i < quantity; i++) {
      _orders.add(orderModel);
    }
    notifyListeners();
  }
}
