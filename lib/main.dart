import 'package:flutter/material.dart';
import 'package:meal_app/providers/cart.dart';
import 'package:meal_app/providers/products.dart';
import 'package:meal_app/screens/cart_screen.dart';
import 'package:meal_app/screens/orders_screen.dart';
import 'package:meal_app/screens/product_detail_screen.dart';
import 'package:meal_app/screens/products_overview_screen.dart';
import 'package:provider/provider.dart';

import 'providers/orders.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return ChangeNotifierProvider.value(
    //   value: Products(),
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Products()),
        ChangeNotifierProvider(create: (_) => Cart()),
        ChangeNotifierProvider(create: (_) => Orders()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
          OrdersScreen.routeName: (ctx) => OrdersScreen(),
        },
      ),
    );
  }
}
