import 'package:flutter/material.dart';

import '../data.dart';

class ItemTile extends StatelessWidget {
  final Item item;
  const ItemTile({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(item.image),
          Text(item.name, style: Theme.of(context).textTheme.headline6),
          Text('${item.price}', style: Theme.of(context).textTheme.caption),
          IconButton(
              onPressed: (){},
              icon: const Icon(
            Icons.add_shopping_cart,
          ))
        ],
      ),
    );
  }
}
