import 'package:flutter/material.dart';
import 'package:meal_app/providers/orders.dart' show Orders;
import 'package:meal_app/widgets/app_drawer.dart';
import 'package:provider/provider.dart';

import '../widgets/order_item.dart';

class OrdersScreen extends StatelessWidget {
  static const routeName = '/orders';

  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Orders'),
      ),
      drawer: AppDrawer(),
      body: ListView.builder(itemBuilder: (ctx, i) => OrderItem(orderData.orders[i]), itemCount: orderData.orders.length,),
    );
  }
}
