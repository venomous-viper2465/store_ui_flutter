import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  List<Map<String, dynamic>> cart = [];

  void addItem(Map<String, dynamic> item) {
    cart.add(item);
    notifyListeners();
  }

  void removeItem(Map<String, dynamic> item) {
    cart.remove(item);
    notifyListeners();
  }
}
