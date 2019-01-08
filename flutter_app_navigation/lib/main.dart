import 'package:flutter/material.dart';
import 'package:flutter_app_navigation/views/basketView.dart';
import 'package:flutter_app_navigation/views/checkoutView.dart';
import 'package:flutter_app_navigation/views/quotesView.dart';

void main() {
  runApp(
      MaterialApp(
        initialRoute: '/',
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        routes: {
          '/': (context) => BasketView(),
          '/checkout': (context) => CheckoutView(),
          '/quotes': (context) => QuotesView()
        },
      )
  );
}