//import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/screens/home_page.dart';

import 'cubit/get_items_cubit/get_items_cubit.dart';
import 'screens/add_grocery_item.dart';

void main() {
  runApp(const GrocaryShop());
}

class GrocaryShop extends StatelessWidget {
  const GrocaryShop({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetItemsCubit(),
      child: MaterialApp(
        theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(
              color: Colors.white, //change your color here
            ),
            actionsIconTheme: IconThemeData(
              color: Colors.white,
              size: 24,
            ),
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          brightness: Brightness.dark,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 8, 218, 204),
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
      ),
    );
  }
}
