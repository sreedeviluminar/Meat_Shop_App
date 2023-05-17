import 'package:flutter/material.dart';
import 'package:meet_shop/provider/fish_items_provider.dart';
import 'package:meet_shop/provider/marinated_items_provider.dart';
import 'package:meet_shop/provider/meat_items_provider.dart';
import 'package:meet_shop/provider/ready_to_cook_items_provider.dart';
import 'Screens/intro_page.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CartProvider>(create: (context) => CartProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      ),
    );
  }
}