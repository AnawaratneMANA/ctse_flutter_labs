import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data.dart';
import '../providers/cart_provider.dart';

class Shop extends StatelessWidget {
  static const String routeName = "/shop";
  const Shop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Set<Item> items = Provider.of<CartProvider>(context).items;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 9,
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index){
                return Dismissible(
                  key: Key(items.elementAt(index).toString()),
                  child: Card(
                    elevation: 5,
                    child: ListTile(
                      title: Text(items.elementAt(index).name),
                      subtitle: Text(items.elementAt(index).price.toString()),
                      trailing: IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: (){ // Adding a delete button.
                            Provider.of<CartProvider>(
                              context,
                              listen: false,
                            ).removeItem(items.elementAt(index));
                      },),
                    ),
                  ),
                  onDismissed: (direction) {
                    Provider.of<CartProvider>(
                      context,
                      listen: false,
                    ).removeItem(items.elementAt(index));
                  },
                );
              }),
          ),
          Flexible(
            flex: 1,
            child: Text(Provider.of<CartProvider>(context).total.toString(),
                style: Theme.of(context).textTheme.headline5),
          ),
        ],
      ),
    );
  }
}
