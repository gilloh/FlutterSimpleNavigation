import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app_navigation/views/checkoutView.dart';
import 'package:flutter_app_navigation/models/items.dart';

class BasketView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basket"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {
            Navigator.pushNamed(context, '/checkout');
          })
        ],
      ),
      body: ItemsList(),
    );
  }
}

class ItemsList extends StatelessWidget {
  final List<Items> items = [
    Items(amount: 0, price: 0.95, description: "per bag", image: Icons.invert_colors, name: 'peas'),
    Items(amount: 0, price: 2.10, description: "per dozen", image: Icons.widgets, name: 'eggs'),
    Items(amount: 0, price: 1.30, description: "per bottle", image: Icons.build, name: 'milk'),
    Items(amount: 0, price: 0.73, description: "per can", image: Icons.description, name: 'beans')
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(20.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2
        ),
        itemCount: items.length,
        itemBuilder: (context, i) {
          return Text('Item: ${items[i].name}');
        });
  }
}