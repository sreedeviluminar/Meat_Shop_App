import 'package:flutter/material.dart';
import '../models/model.dart';

List<Products> fish = [
  Products(name: "Tuna", price: 120, image: "assets/fi_tuna.jpg"),
  Products(name: "Prawns", price: 100, image: "assets/fi_prawns.jpg"),
  Products(name: "Salmon", price: 500, image: "assets/fi_salmon.jpeg"),
  Products(name: "Lobster", price: 800, image: "assets/fi_lobster.jpg"),
  Products(name: "Mackerel", price: 150, image: "assets/fi_mackerel.jpg"),
  Products(name: "Squid", price: 210, image: "assets/fi_squid.jpg"),
  Products(name: "Karimeen", price: 600, image: "assets/fi_karimeen.jpg"),
];
List<Products> marinated = [
  Products(name: "Chicken", price: 350, image: "assets/ma_chicken.jpg",),
  Products(name: "Fish", price: 260, image: "assets/ma_fish.jpg",),
  Products(name: "Beef", price: 580, image: "assets/ma_beef.jpg",),
  Products(name: "Mutton", price: 800, image: "assets/ma_mutton.jpg",),
];

List<Products> meat = [
  Products(name: "Chicken", price: 120, image: "assets/m_chichen.jpg",),
  Products(name: "Mutton", price: 350, image: "assets/m_mutton.jpg",),
  Products(name: "Beef", price: 550, image: "assets/m_beef.jpg",),
  Products(name: "Pork", price: 620, image: "assets/m_pork.jpg",),
  Products(name: "Duck", price: 400, image: "assets/m_duck.jpg",),
];

List<Products> readytocook = [
  Products(name: "Fried Chicken", price: 370, image: "assets/rtc_friedchicken.jpg",),
  Products(name: "Mock Meat", price: 210, image: "assets/rtc_mockmeat.png",),
  Products(name: "Roast Pork", price: 430, image: "assets/rtc_roast_pork.jpg",),
  Products(name: "Soya Tikka", price: 120, image: "assets/rtc_soya.jpg",),
  Products(name: "Like chicken", price: 260, image: "assets/rtc_vegan Like Chicken.jpg",),
  Products(name: "Vindaloo Paste", price: 180, image: "assets/rtc_vindaloo_paste.jpg",),
];

class CartProvider extends ChangeNotifier {

  var fishh = fish;

  List<Products> get fishhome => fishh;

  var marinateh = marinated;

  List<Products> get marinatedhome => marinateh;

  var meath = meat;

  List<Products> get meathome => meath;

  var readytocookh = readytocook;

  List<Products> get readytocookhome => readytocookh;


  final List<Products> cart = [];

  List<Products> get cartall => cart;

  void addToCart(Products data) {
    int index = cart.indexWhere((element) => element == data);
    if (index != -1 ) {
      cart[index].count =cart[index].count +1;
    }else {
      cart.add(data);
    }
    notifyListeners();
  }

  void removeFromCart(Products data) {
    cart.remove(data);
    notifyListeners();
  }

}
