import 'package:flutter_app_navigation/models/currencies.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class QuotesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Quotes')),
      body: QuotesViewPage(),
    );
  }
}

class QuotesViewPage extends StatefulWidget {
  QuotesViewPage({Key key}) : super(key: key);

  @override
  _QuotesViewPageState createState() => _QuotesViewPageState();
}

class _QuotesViewPageState extends State<QuotesViewPage> {
  Map<String, double> quotes = {};

  @override
  void initState() {
    super.initState();

    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: quotes.length,
            itemBuilder: (BuildContext context, int position) {
              return getRow(position);
            }));
  }

  Widget getRow(int i) {
    return Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("${quotes.keys.toList()[i]} - ${quotes.values.toList()[i]}")
    );
  }

  loadData() async {
    String dataURL = "http://apilayer.net/api/live?access_key=f0e5fa2d8378c05bfc27169861916068";
    http.Response response = await http.get(dataURL);
    setState(() {
      final jsonData = json.decode(response.body);
      quotes = Currencies.fromJson(jsonData).quotes;
    });
  }
}