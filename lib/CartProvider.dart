import 'package:flutter/material.dart';
import 'package:nadarat/CartItem.dart';

class CartProvider with ChangeNotifier {
  // ignore: non_constant_identifier_names
  final List<CartItem> _Carts = [];

  // ignore: prefer_typing_uninitialized_variables
  static var cartItems;

  List<CartItem> get Carts => _Carts;

  bool isCarted(String itemName) {
    return _Carts.any((item) => item.title == itemName);
  }

  void toggleCartStatus(String itemName, String imagePath) {
    final existingIndex = _Carts.indexWhere((item) => item.title == itemName);
    if (existingIndex >= 0) {
      _Carts.removeAt(existingIndex);
    } else {
      _Carts.add(CartItem(itemName, imagePath));
    }
    notifyListeners();
  }

  void removeFromCart(CartItem item) {
    _Carts.remove(item);
    notifyListeners();
  }

  double getTotalPrice() {
    return _Carts.length * 50.0;
  }
}
