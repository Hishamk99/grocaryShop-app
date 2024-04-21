import 'package:flutter/material.dart';

class AddGroceryItem extends StatelessWidget {
  const AddGroceryItem({super.key});
  static String id = 'AddGroceryItem';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text("Add Grocery Item"),
        ),
      ),
    );
  }
}
