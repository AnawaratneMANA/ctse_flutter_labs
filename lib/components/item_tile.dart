import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data.dart';
import '../providers/cart_provider.dart';

class ItemTile extends StatelessWidget {
  final Item item;
  const ItemTile({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        children: [
          Expanded(child: Image.network(item.image)),
          Text(item.name, style: Theme.of(context).textTheme.headline6),
          Text('${item.price}', style: Theme.of(context).textTheme.caption),
          IconButton(
              onPressed: (){
                Provider.of<CartProvider>(context, listen: false).addItem(item); // Warning listen: false, to avoid recursions.
              },
              icon: const Icon(
            Icons.add_shopping_cart,
          ))
        ],
      ),
    );
  }
}
