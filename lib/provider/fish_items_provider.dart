import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  final List _shopItems = [
    ["Tuna", "4.0", "assets/fi_tuna.jpg", Colors.green],
    ["Prawn", "1.0", "assets/fi_prawns.jpg", Colors.green],
    ["Salmon", "3.0", "assets/fi_salmon.jpeg", Colors.green],
    ["Lobster", "1.2", "assets/fi_lobster.jpg", Colors.green],
    ["Mackerel", "2.0", "assets/fi_mackerel.jpg", Colors.green],
    ["Squid", "1.0", "assets/fi_squid.jpg", Colors.green],
    ["Kari Meen", "1.0", "assets/fi_karimeen.jpg", Colors.green],
  ];

  List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  void addItemToCart(int index){
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeItemFromCart(int index){
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String calculateTotal(){
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++ ) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
