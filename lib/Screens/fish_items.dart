import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/item_tile.dart';
import '../provider/cart_provider.dart';
import 'cart_page.dart';

class FishItems extends StatelessWidget {

   FishItems({Key? key}) : super(key: key);
  var fishitemName = [
    "Tuna",
    "Prawn",
    "Salmon",
    "Lobster",
    "Mackerel",
    "Squid",
    "Kari Meen",
  ];
   var fishimagePath = [
     "assets/fi_tuna.jpg",
     "assets/fi_prawns.jpg",
     "assets/fi_salmon.jpeg",
     "assets/fi_lobster.jpg",
     "assets/fi_mackerel.jpg",
     "assets/fi_squid.jpg",
     "assets/fi_karimeen.jpg",
   ];
   var fishitemPrice = [
     "120/Kg",
     "100/Kg",
     "500/Kg",
     "800/Kg",
     "150/Kg",
     "210/Kg",
     "600/Kg"
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
                  "Fish Items",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GridView.builder(
                    itemCount: fishitemName.length,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1/1.2),
                    itemBuilder: (context, index) {
                      return ItemTile(
                        ItemName: fishitemName[index],
                        ItemPrice: fishitemPrice[index],
                        ImagePath: fishimagePath[index],
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
