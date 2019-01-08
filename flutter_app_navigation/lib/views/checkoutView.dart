import 'package:flutter/material.dart';

class CheckoutView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.monetization_on), onPressed: () {
            Navigator.pushNamed(context, '/quotes');
          })
        ],
      ),
      body: Center(
        child: FloatingActionButton(elevation: 6.0, onPressed: () { Navigator.pop(context); }),
      ),
    );
  }
}