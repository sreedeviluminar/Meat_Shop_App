import 'package:flutter/material.dart';

var fish= [
  [
    "Tuna",
    "assets/fi_tuna.jpg",
    "120/Kg",
  ],
  [
    "Prawn",
    "assets/fi_prawns.jpg",
    "100/Kg",
  ],
  [
    "Salmon",
    "assets/fi_salmon.jpeg",
    "500/Kg",
  ],
  [
    "Lobster",
    "assets/fi_lobster.jpg",
    "800/Kg",
  ],
  [
    "Mackerel",
    "assets/fi_mackerel.jpg",
    "150/Kg",
  ],
  [
    "Squid",
    "assets/fi_squid.jpg",
    "210/Kg",
  ],
  ["Kari Meen", "assets/fi_karimeen.jpg", "600/Kg"]
];

var marinated = [
  ["Chicken","assets/ma_chicken.jpg","350/Kg",],
  ["Fish","assets/ma_fish.jpg","260/Kg",],
  ["Beef","assets/ma_beef.jpg","580/Kg",],
  ["Mutton","assets/ma_mutton.jpg","800/Kg",]
];

var meat = [
  ["Chicken","assets/m_chichen.jpg","120/Kg",],
  ["Mutton","assets/m_mutton.jpg","350/Kg",],
  ["Beef","assets/m_beef.jpg","550/Kg",],
  ["Pork","assets/m_pork.jpg","620/Kg",],
  ["Duck","assets/m_duck.jpg","400/Kg",]
];

var readytocook = [
  ["Fried Chicken","assets/rtc_friedchicken.jpg","370",],
  ["Mock Meat","assets/rtc_mockmeat.png","210",],
  ["Roast Pork","assets/rtc_roast_pork.jpg","430",],
  ["Soya Tikka","assets/rtc_soya.jpg","120",],
  ["Like chicken","assets/rtc_vegan Like Chicken.jpg","260",],
  ["Vindaloo Paste","assets/rtc_vindaloo_paste.jpg","180"]
];


class CartProvider extends ChangeNotifier {

  var fishh= fish;
  List  get fishhome => fishh;

  final List cart = [];
  List get cartall => cart;

  void addFishItemToCart(int index) {
    cart.add(cart[index]);
    notifyListeners();
  }
  void removeFishItemToCart(int index) {
    cart.removeAt(cart[index]);
    notifyListeners();
  }

  var marinatedh= marinated;
  List  get marinatedhome => marinatedh;

  void addMarinatedItemToCart(int index) {
    cart.add(cart[index]);
    notifyListeners();
  }
  void removeMarinatedItemToCart(int index) {
    cart.removeAt(cart[index]);
    notifyListeners();
  }

  var meath= meat;
  List  get meathome => meath;

  void addMeatItemToCart(int index) {
    cart.add(cart[index]);
    notifyListeners();
  }

  void removeMeatItemToCart(int index) {
    cart.removeAt(cart[index]);
    notifyListeners();
  }

  var readytocookh = readytocook;
  List  get readytocookhome => readytocookh;

  void addReadyToCookItemToCart(int index) {
    cart.add(cart[index]);
    notifyListeners();
  }

  void removeReadyToCookItemToCart(int index) {
    cart.removeAt(cart[index]);
    notifyListeners();
  }

  // final List _meatItems = [];
  //
  // final List _marinatedItems = [];
  //
  // final List _readyToCookItems = [];
  //
  // final List _cartItems = [];
  //
  // get meatItems => _meatItems;
  //
  // get marinatedItems => _marinatedItems;
  //
  // get readyToCookItems => _readyToCookItems;
  //
  // get cartItems => _cartItems;

  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cart.length; i++) {
      totalPrice += double.parse(cart[i]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
