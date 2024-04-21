import 'package:flutter/material.dart';

class GroceryItem extends StatelessWidget {
  const GroceryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        'Milk',
        style: TextStyle(color: Colors.white),
      ),
      leading: Container(
        height: 24,
        width: 24,
        color: Colors.red,
      ),
      trailing: const Text(
        '2',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
