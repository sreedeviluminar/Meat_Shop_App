// import 'package:flutter/material.dart';
//
// class ReadyToCookCart extends ChangeNotifier {
//   final List _shopItems = [
//     ["Fried Chicken", "4.0", "assets/rtc_friedchicken.jpg", Colors.green],
//   ];
//
//   List _cartItems = [];
//
//   get shopItems => _shopItems;
//
//   get cartItems => _cartItems;
//
//   void addItemToCart(int index){
//     _cartItems.add(_shopItems[index]);
//     notifyListeners();
//   }
//
//   void removeItemFromCart(int index){
//     _cartItems.removeAt(index);
//     notifyListeners();
//   }
//
//   String calculateTotal(){
//     double totalPrice = 0;
//     for (int i = 0; i < _cartItems.length; i++ ) {
//       totalPrice += double.parse(_cartItems[i][1]);
//     }
//     return totalPrice.toStringAsFixed(2);
//   }
// }
