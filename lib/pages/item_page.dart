import 'package:flutter/material.dart';
import 'package:flutter_minggu5/models/item.dart';

class ItemPage extends StatelessWidget {
  final Item tempItem;

  ItemPage({Key key, this.tempItem}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Text(
            tempItem.name + ";" + tempItem.price.toString(),
          ),
        ),
      ),
    );
  }
}
