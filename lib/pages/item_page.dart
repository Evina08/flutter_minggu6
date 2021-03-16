import 'package:flutter/material.dart';
import 'package:flutter_minggu5/models/item.dart';

class ItemPage extends StatelessWidget {
  final Item tempItem;

  ItemPage({Key key, this.tempItem}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Boo Shop"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(8),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Material(
                            elevation: 40.0,
                            shadowColor: Colors.pinkAccent,
                            child: Image(
                              image: AssetImage(tempItem.image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 10.0,
                            right: 10.0,
                          ),
                          child: Text(
                            tempItem.name,
                            style: TextStyle(fontSize: 27, color: Colors.pink),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  "RP. " + tempItem.price.toString(),
                  style: TextStyle(fontSize: 25, color: Colors.pink),
                ),
                Text(
                  "Tersisa: " + tempItem.stok.toString(),
                  style: TextStyle(fontSize: 25, color: Colors.pink),
                ),
                SizedBox(height: 32.0),
                Material(
                  borderRadius: BorderRadius.circular(20.0),
                  shadowColor: Colors.pink[200],
                  elevation: 5.0,
                  child: MaterialButton(
                    onPressed: () {},
                    minWidth: 160.0,
                    color: Colors.red[300],
                    child: Text(
                      'BELI',
                      style: TextStyle(fontSize: 27, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
