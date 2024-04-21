import 'package:flutter/material.dart';
import 'package:shop_app/screens/home_page.dart';

void main() {
  runApp(const GrocaryShop());
}

class GrocaryShop extends StatelessWidget {
  const GrocaryShop({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
