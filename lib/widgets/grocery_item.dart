import 'package:flutter/material.dart';
import 'package:shop_app/models/grocery_model.dart';

class GroceryItem extends StatelessWidget {
  const GroceryItem({
    super.key,
    required this.item,
  });
  final GroceryModel item;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        item.name,
        style: const TextStyle(color: Colors.white),
      ),
      leading: Container(
        height: 24,
        width: 24,
        color: item.categoryItem.color,
      ),
      trailing: Text(
        item.quantity,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
