import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  final List _fishItems = [
    // ["Tuna", "4.0", "assets/fi_tuna.jpg", Colors.green],
    // ["Prawn", "1.0", "assets/fi_prawns.jpg", Colors.green],
  ];

  final List _meatItems = [
    // ["Tuna", "4.0", "assets/fi_tuna.jpg", Colors.green],
    // ["Prawn", "1.0", "assets/fi_prawns.jpg", Colors.green],
  ];

  final List _marinatedItems = [
    // ["Tuna", "4.0", "assets/fi_tuna.jpg", Colors.green],
    // ["Prawn", "1.0", "assets/fi_prawns.jpg", Colors.green],
  ];

  final List _readyToCookItems = [
    // ["Tuna", "4.0", "assets/fi_tuna.jpg", Colors.green],
    // ["Prawn", "1.0", "assets/fi_prawns.jpg", Colors.green],
  ];


  List _cartItems = [];

  get fishItems => _fishItems;

  get meatItems => _meatItems;

  get marinatedItems => _marinatedItems;

  get readyToCookItems => _readyToCookItems;

  get cartItems => _cartItems;

  void addFishItemToCart(int index) {
    _cartItems.add(_fishItems[index]);
    notifyListeners();
  }

  void addMeatItemToCart(int index) {
    _cartItems.add(_meatItems[index]);
    notifyListeners();
  }

  void addMarinatedItemToCart(int index) {
    _cartItems.add(_marinatedItems[index]);
    notifyListeners();
  }

  void addReadyToCookItemToCart(int index) {
    _cartItems.add(_readyToCookItems[index]);
    notifyListeners();
  }

  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
