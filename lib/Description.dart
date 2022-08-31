import 'package:fakestore/products.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  // final String Desc;
  final int id;
  final String photo;

  const Description({Key? key, required this.photo, required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Align(alignment:Alignment.center,child: Text('Description')),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          )
        ],

      ),
      body: Container(
        child: Hero(tag: id, child: Image.network(photo)),
      ),
    );
  }
}
