import 'package:flutter/material.dart';
import 'package:flutter_minggu5/models/item.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Sugar', price: 5000),
    Item(name: 'Salt', price: 2000)
  ];
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
