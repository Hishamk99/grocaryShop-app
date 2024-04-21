import 'package:flutter/material.dart';
import 'package:shop_app/widgets/no_data_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
        ),
        body: const NoDataItems(),
      ),
    );
  }
}
