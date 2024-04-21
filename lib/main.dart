import 'package:flutter/material.dart';

void main() {
  runApp(const GrocaryShop());
}

class GrocaryShop extends StatelessWidget {
  const GrocaryShop({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(),
    );
  }
}
