// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItem = [
    ['Avocado', ' 4.50', 'assets/avocado.png', Colors.green],
    ['Banana', ' 2.00', 'assets/banana.png', Colors.yellow],
    ['Chicken', ' 12.20', 'assets/chicken.png', Colors.brown],
    ['Water', ' 2.00', 'assets/water.png', Colors.blue],
    ['Yoghurt', ' 7.25', 'assets/yoghurt.png', Colors.pink],
    ['Chocolate', ' 10.00', 'assets/chocolate.png', Colors.red],
  ];

  List _cartItems = [];

  get shop => _shopItem;

  get cart => _cartItems;

  //add items to cart
  void addToCart(int index) {
    _cartItems.add(_shopItem[index]);
    notifyListeners();
  }

  //remove items from cart
  void removeFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  //calculate total price
  String CalculateTotal() {
    double total = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      total += double.parse(_cartItems[i][1]);
    }
    return total.toStringAsFixed(2);
  }
}
