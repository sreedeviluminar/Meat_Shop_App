import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/item_tile.dart';
import '../provider/cart_provider.dart';
import 'cart_page.dart';

var mitemName = [
  "Chicken",
  "Fish",
  "Beef",
  "Mutton",
];
var mimagePath = [
  "assets/ma_chicken.jpg",
  "assets/ma_fish.jpg",
  "assets/ma_beef.jpg",
  "assets/ma_mutton.jpg",
];
var mitemPrice = [
  "350/Kg",
  "260/Kg",
  "580/Kg",
  "800/Kg",
];

class MarinatedItems extends StatelessWidget {
  MarinatedItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () => Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return CartPage();
            },
          )),
          child: const Icon(
            Icons.shopping_bag,
            color: Colors.white,
          ),
        ),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Marinated Items",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GridView.builder(
                    itemCount: mitemName.length,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio: 1 / 1.2),
                    itemBuilder: (context, index) {
                      return ItemTile(
                        ItemName: mitemName[index],
                        ItemPrice: mitemPrice[index],
                        ImagePath: mimagePath[index],
                        color: Colors.green,
                        onPressed: () {
                          Provider.of<CartProvider>(context, listen: false)
                              .addMarinatedItemToCart(index);
                        },
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
