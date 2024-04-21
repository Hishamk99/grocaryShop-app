import 'package:flutter/material.dart';
import 'package:shop_app/screens/add_grocery_item.dart';
import 'package:shop_app/widgets/grocery_data.dart';
import 'package:shop_app/widgets/no_data_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Your Grocery',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, AddGroceryItem.id);
              },
              icon: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: const GroceryData(),
      ),
    );
  }
}
