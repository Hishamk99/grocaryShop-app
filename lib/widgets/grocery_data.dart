import 'package:flutter/material.dart';

import 'grocery_item.dart';

class GroceryData extends StatelessWidget {
  const GroceryData({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const GroceryItem();
      },
    );
  }
}
