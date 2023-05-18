import 'package:flutter/material.dart';
import 'package:meet_shop/provider/cart_provider.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var carthome = context.watch<CartProvider>().cartall;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My Cart",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: carthome.length,
                  itemBuilder: (context, index) {
                    var item = carthome[index];
                    return Padding(
                      padding: const EdgeInsets.only(
                          bottom: 10,
                          top: 10
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(8)),
                        child: ListTile(
                          leading: CircleAvatar(backgroundImage: AssetImage(item.image)),
                          title: Text(item.name),
                          subtitle: Text('₹ ${item.price}\Kg'),
                          trailing: IconButton(
                            onPressed: () =>
                                Provider.of<CartProvider>(context, listen: false)
                                    .removeFromCart(item),
                            icon: Icon(Icons.remove_shopping_cart_outlined),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(36.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(8)),
                    padding: EdgeInsets.all(20),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Total Price",style: TextStyle(color: Colors.white),),
                            SizedBox(
                              height: 5,
                            ),
                            // Text(value.calculateTotal(),
                            //   style: TextStyle(
                            //       color: Colors.white,
                            //       fontSize: 18,
                            //       fontWeight: FontWeight.bold
                            //   ),)
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Colors.green.shade100)
                          ),
                          padding: EdgeInsets.all(12),
                          child: Row(
                            children: [
                              Text("Pay Now",style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              )),
                              Icon(Icons.arrow_forward_ios,color: Colors.white,size: 16,)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
