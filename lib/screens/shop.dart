import 'package:flutter/material.dart';

class Shop extends StatelessWidget {
  static const String routeName = "/shop";
  const Shop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
      )
    );
  }
}
