import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/item_tile.dart';
import '../provider/cart_provider.dart';
import 'cart_page.dart';

var rtcItemName = [
  "Fried Chicken",
  "Mock Meat",
  "Roast Pork",
  "Soya Tikka",
  "Like chicken",
  "Vindaloo Paste",
];
var rtcImagePath = [
  "assets/rtc_friedchicken.jpg",
  "assets/rtc_mockmeat.png",
  "assets/rtc_roast_pork.jpg",
  "assets/rtc_soya.jpg",
  "assets/rtc_vegan Like Chicken.jpg",
  "assets/rtc_vindaloo_paste.jpg"
];
var rtcItemPrice = ["370", "210", "430", "120", "260", "180"];

class ReadyToCookItems extends StatelessWidget {
  ReadyToCookItems({Key? key}) : super(key: key);

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
                  "Ready To Cook Products",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GridView.builder(
                    itemCount: rtcItemName.length,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio: 1 / 1.2),
                    itemBuilder: (context, index) {
                      return ItemTile(
                        ItemName: rtcItemName[index],
                        ItemPrice: rtcItemPrice[index],
                        ImagePath: rtcImagePath[index],
                        color: Colors.green,
                        onPressed: () {
                          Provider.of<CartProvider>(context, listen: false)
                              .addReadyToCookItemToCart(index);
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
