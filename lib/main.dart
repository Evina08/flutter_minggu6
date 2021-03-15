import 'package:flutter/material.dart';
import 'package:flutter_minggu5/pages/home_page.dart';
import 'package:flutter_minggu5/pages/item_page.dart';

void main() {
  runApp(MaterialApp(initialRoute: '/', routes: {
    '/': (context) => HomePage(),
    '/item': (context) => ItemPage(),
  }));
}
