import 'package:flutter/material.dart';

class MeatCart extends ChangeNotifier {
  final List _shopItems = [
    ["Chicken", "4.0", "assets/m_chichen.jpg", Colors.green],
    ["Mutton", "2.0", "assets/m_mutton.jpg", Colors.green],
    ["Beef", "1.0", "assets/m_beef.jpg", Colors.green],
    ["Pork", "3.0", "assets/m_pork.jpg", Colors.green],
    ["Duck", "1.2", "assets/m_duck.jpg", Colors.green],
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
