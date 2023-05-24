import 'package:flutter/material.dart';
import '../../fish_items.dart';
import '../../marinated_items.dart';
import '../../meat_items.dart';
import '../../ready_cook_items.dart';
import '../widgets/category_item_card.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, bottom: 20, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hey User,",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Let's order fresh items for you",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Divider(
                      thickness: 4,
                    ),
                    Text(
                      "Categories",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SingleChildScrollView(
                      physics: ScrollPhysics(),
                      child: GridView(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,childAspectRatio: .7),
                          children: [
                            CategoryItemTile(
                              CategoryName: "Meat",
                              ImagePath: "assets/cate_meat.jpg",
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return MeatItems();
                                  },
                                ));
                              },
                              color: Colors.green,
                            ),
                            CategoryItemTile(
                              CategoryName: "Fish",
                              ImagePath: "assets/cate_fish.jpg",
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return FishItems();
                                  },
                                ));
                              },
                              color: Colors.green,
                            ),
                            CategoryItemTile(
                              CategoryName: "Marinated Items",
                              ImagePath: "assets/cate_marinated.jpg",
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return MarinatedItems();
                                  },
                                ));
                              },
                              color: Colors.green,
                            ),
                            CategoryItemTile(
                              CategoryName: "Ready to Cook",
                              ImagePath: "assets/cte_ready to cook.jpg",
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return ReadyToCookItems();
                                  },
                                ));
                              },
                              color: Colors.green,
                            ),
                          ]),
                    )
                  ],
                ))));
  }
}
