import 'package:flutter/material.dart';

import '../data.dart';

class CartProvider extends ChangeNotifier {

  ///  Using this component we are removing the common data,
  ///  and push them outside the widget tree.
  ///
  ///  Even the calculation can be take place here, rather than having them in the UI.
  ///
  ///  To keep the item either a list or a set should be created.
  ///  (Concern about avoiding duplicate values)
  /// **/

  Set<Item> _items = {};

  bool isItemAdded(Item item){
    return _items.contains(item);
    //Optional since we are using Set.
    // (No duplicate values can be there in sets).
  }

  void addItem(Item item){
    _items.add(item);
  }

  void removeItem(Item item){
    _items.remove(item);
  }
}