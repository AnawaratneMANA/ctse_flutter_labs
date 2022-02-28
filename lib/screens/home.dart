import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab3/screens/shop.dart';

import '../components/item_tile.dart';
import '../data.dart';

class Home extends StatelessWidget {
  static const String routeName = "/";
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("My Store")),
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).pushNamed(Shop.routeName);
          }, icon: const Icon(
            Icons.shopping_cart,
          ))
        ]
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: storeItems.length,
          itemBuilder: (context, index){
            return ItemTile(
              item: storeItems.elementAt(index),
            );
          }
      ),
    );
  }
}