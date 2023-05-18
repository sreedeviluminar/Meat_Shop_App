import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  final List _fishItems = [];

  final List _meatItems = [];

  final List _marinatedItems = [];

  final List _readyToCookItems = [];

  final List _cartItems = [];

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

  void removeFishItemToCart(int index) {
    _cartItems.removeAt(_fishItems[index]);
    notifyListeners();
  }
  void removeMeatItemToCart(int index) {
    _cartItems.removeAt(_meatItems[index]);
    notifyListeners();
  }

  void removeMarinatedItemToCart(int index) {
    _cartItems.removeAt(_marinatedItems[index]);
    notifyListeners();
  }

  void removeReadyToCookItemToCart(int index) {
    _cartItems.removeAt(_readyToCookItems[index]);
    notifyListeners();
  }

  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
