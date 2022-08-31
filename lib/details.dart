import 'package:fakestore/Description.dart';
import 'package:fakestore/products.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class details extends StatefulWidget {
  const details({
    Key? key,
  }) : super(key: key);

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        automaticallyImplyLeading: false,
        title: Center(child: const Text('More Details')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridView.builder(
          itemCount: productList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 3.5 / 5,
            crossAxisSpacing: 15,
          ),
          itemBuilder: (context, index) {
            final item = productList[index];

            return GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Description(photo: item.image!,id: item.id!,)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(child: Hero(tag: item.id!, child: Image.network(item.image!))),
                      InkWell(
                        onTap: () {
                          setState(() {
                            item.isFavorite = item.isFavorite!;
                          });
                        },
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Icon(
                            item.isFavorite == true
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(item.name!),
                  Text(item.price.toString()),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
