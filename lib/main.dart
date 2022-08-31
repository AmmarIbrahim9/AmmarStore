import 'package:fakestore/details.dart';
import 'package:fakestore/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fakestore/products.dart';

import 'Search.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        automaticallyImplyLeading: false,
        leading: Icon(
          Icons.menu, // add custom icons also
        ),
        title: Center(
          child: const Text(
            "Shopping App",
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: CustomSearchDelegate());
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return details();
              });
        },
        child: const Icon(
          Icons.remove_red_eye_rounded,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridView.builder(
          itemCount: productList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3.5 / 5,
            crossAxisSpacing: 15,
          ),
          itemBuilder: (context, index) {
            final item = productList[index];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(height: 200, child: Image.network(item.image!)),
                    InkWell(
                      onTap: () {
                        setState(() {
                          item.isFavorite = !item.isFavorite!;
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
                Center(child: Text(item.name!)),
                SizedBox(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Text('${item.price.toString()} USD',
                        style: TextStyle(color: Colors.teal))),
              ],
            );
          },
        ),
      ),
    );
  }
}
