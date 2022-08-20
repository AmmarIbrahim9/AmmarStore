import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fakestore/Fakestore.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Dio dio = Dio();
  String url = 'https://fakestoreapi.com/products';
  List<dynamic> dataModel = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<List<dynamic>> getData() async {
    Response response = await dio.get(url);
    dataModel =
        response.data.map((product) => DataModel.fromJson(product)).toList();
    return dataModel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API'),
      ),
      body: FutureBuilder(
        future: getData(),
        builder: ((context, snapshot) {
          return snapshot.hasData
              ? GridView.builder(
                  itemCount: dataModel.length,
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 5.0,
                  ),
                  itemBuilder: (context, index) {
                    return Column(mainAxisSize: MainAxisSize.min, children: [
                      Flexible(
                        child: Container(
                          child: Image.network(dataModel[index].image!,
                              fit: BoxFit.fill),
                        ),
                      ),
                      Text(
                        "${dataModel[index].price!} USD",
                        style: TextStyle(color: Colors.red),
                      ),
                      Text(
                        "${dataModel[index].title!}",
                        style: TextStyle(backgroundColor: Colors.black12),
                      )
                    ]);
                  },
                )
              : snapshot.hasError
                  ? Text('Sorry, Someting went')
                  : Center(child: CupertinoActivityIndicator());
        }),
      ),
    );
  }
}
