import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab3/screens/shop.dart';

class Home extends StatelessWidget {
  static const String routeName = "/";
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text("My Store")),
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).pushNamed(Shop.routeName);
          }, icon: const Icon(
            Icons.shopping_cart,
          ))
        ]
      )
    );
  }
}