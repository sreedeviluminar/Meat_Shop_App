import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/item_tile.dart';
import '../provider/cart_provider.dart';
import 'cart_page.dart';


class ReadyToCookItems extends StatelessWidget {
  ReadyToCookItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var readytocookhome = context.watch<CartProvider>().readytocookhome;
    var readytocookcart = context.watch<CartProvider>().cartall;

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
          child: Wrap(
              children: [
                Icon(
                  Icons.shopping_bag,
                  color: Colors.white,
                ),
                Text("${readytocookcart.length}")
              ]
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
                    itemCount: readytocookhome.length,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio: 1 / 1.2),
                    itemBuilder: (context, index) {
                      return ItemTile(
                        ItemName: readytocookhome[index][0],
                        ItemPrice: readytocookhome[index][2],
                        ImagePath: readytocookhome[index][1],
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
