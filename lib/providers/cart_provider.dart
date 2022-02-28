import 'package:flutter/material.dart';

import '../data.dart';

class CartProvider extends ChangeNotifier {

  ///  Using this component we are removing the common data,
  ///  and push them outside the widget tree.

  ///  Even the calculation can be take place here,
  ///  rather than having them in the UI.

  ///  To keep the item either a list or a set should be created.
  ///  (Concern about avoiding duplicate values)

  ///  A higher order function can be used to iterate through the list.
  ///  rather than using a loop.


  final Set<Item> _items = {};

  // Getters and Setters
  Set<Item> get items => _items;
  double get total => _items.fold(
      0.0, (previousValue, item)=> previousValue + item.price
  );

  bool isItemAdded(Item item){
    return _items.contains(item);
    //Optional since we are using Set.
    // (No duplicate values can be there in sets).
  }

  void addItem(Item item){
    _items.add(item);
    notifyListeners();
  }

  void removeItem(Item item){
   if(_items.contains(item)){
     _items.remove(item);
     notifyListeners();
   }
  }

  // Total calculation method. (Loop Version).
  double calculateTotal(){
    return 0.0;
  }
}