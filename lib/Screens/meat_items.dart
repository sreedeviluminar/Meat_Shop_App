import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/item_tile.dart';
import '../provider/cart_provider.dart';
import '../provider/meat_items_provider.dart';
import 'cart_page.dart';

class MeatItems extends StatelessWidget {
  MeatItems({Key? key}) : super(key: key);

  var meatItemName = [
    "Chicken",
    "Mutton",
    "Beef",
    "Pork",
    "Duck",
  ];
  var meatImagePath = [
    "assets/m_chichen.jpg",
    "assets/m_mutton.jpg",
    "assets/m_beef.jpg",
    "assets/m_pork.jpg",
    "assets/m_duck.jpg",
  ];
  var meatItemPrice = [
    "120/Kg",
    "350/Kg",
    "550/Kg",
    "620/Kg",
    "400/Kg",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        floatingActionButton: FloatingActionButton(backgroundColor: Colors.black,
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) {
            return CartPage();
          },)),
          child: const Icon(Icons.shopping_bag,color: Colors.white,),
        ),
        body: Padding(
          padding:
          const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 30),
          child: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start ,
              children :[
                Text(
                  "Meat Items",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GridView.builder(
                    itemCount: meatItemName.length,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1/1.2),
                    itemBuilder: (context, index) {
                      return ItemTile(
                        ItemName: meatItemName[index],
                        ItemPrice: meatItemPrice[index],
                        ImagePath: meatImagePath[index],
                        color: Colors.green,
                        onPressed: () {
                          Provider.of<CartProvider>(context, listen: false).addItemToCart(index);
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
