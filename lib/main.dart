import 'package:flutter/material.dart';
import 'package:shop_app/screens/home_page.dart';

import 'screens/add_grocery_item.dart';

void main() {
  runApp(const GrocaryShop());
}

class GrocaryShop extends StatelessWidget {
  const GrocaryShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 52, 150, 144),
          surface: const Color.fromARGB(255, 44, 50, 60),
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 49, 57, 59),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.id: (context) => const HomePage(),
        AddGroceryItem.id: (context) => const AddGroceryItem(),
      },
      initialRoute: HomePage.id,
    );
  }
}
