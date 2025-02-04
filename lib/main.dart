import 'package:f25_shopping_app_provider_package/pages/product_page.dart';
import 'package:f25_shopping_app_provider_package/provider/cart_provider.dart';
import 'package:f25_shopping_app_provider_package/provider/favourite_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    // for multi providers
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => CartProvider(),),
      ChangeNotifierProvider(create: (context) => FavouriteProvider(),),
    ],
        // for single providers
    // ChangeNotifierProvider(
    //   create: (context) => CartProvider(), // which provider this should listen, Listening to single provider
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductPage(),
    );
  }
}
