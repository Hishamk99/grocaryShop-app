import 'package:flutter/material.dart';
import 'package:shop_app/models/grocery_model.dart';

import 'grocery_item.dart';

class GroceryData extends StatelessWidget {
  const GroceryData({
    super.key,
    required this.items,
  });
  final List<GroceryModel> items;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GroceryItem(
          item: items[index],
        );
      },
    );
  }
}
