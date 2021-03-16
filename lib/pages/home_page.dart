import 'package:flutter/material.dart';
import 'package:flutter_minggu5/models/item.dart';
import 'package:flutter_minggu5/pages/item_page.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Bear Brown Sugar',
        price: 90000,
        image: 'assets/bearmaroon.jpg',
        stok: 10),
    Item(
        name: 'Cute Panda',
        price: 130000,
        image: 'assets/bearwhite.jpg',
        stok: 12),
    Item(name: 'Stitch Blue', price: 70000, image: 'assets/stitch.jpg', stok: 8)
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Happy Shop!',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Boo Shop"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ItemPage(tempItem: item)),
                  );
                },

                child: Container(
                  margin: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(
                        child: Image(
                          image: AssetImage(item.image),
                          fit: BoxFit.cover,
                          width: 70.0,
                          height: 350.0,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          item.name,
                          style: TextStyle(fontSize: 27, color: Colors.pink),
                        ),
                      )
                    ],
                  ),
                ),
                // child: Image(
                //   image: AssetImage(item.image),
                //   fit: BoxFit.cover,
                //   width: 70.0,
                //   height: 105.0,
                // ),
                // child: Card(
                //   child: Container(
                //     margin: EdgeInsets.all(8),
                //     child: Row(
                //       children: [
                //         Expanded(child: Text(item.name)),
                //         Expanded(
                //           child: Text(
                //             item.price.toString(),
                //             textAlign: TextAlign.end,
                //           ),
                //         )
                //       ],
                //     ),
                //   ),
                // ),
              );
            },
          ),
        ),
      ),
    );
  }
}
