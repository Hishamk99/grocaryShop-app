import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/cubit/get_items_cubit/get_items_state.dart';
import 'package:shop_app/screens/add_grocery_item.dart';
import 'package:shop_app/widgets/grocery_data.dart';
import 'package:shop_app/widgets/no_data_items.dart';

import '../cubit/get_items_cubit/get_items_cubit.dart';
//import 'package:shop_app/widgets/no_data_items.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static String id = 'HomePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    BlocProvider.of<GetItemsCubit>(context).getItems();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Your Grocery',
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, AddGroceryItem.id);
              },
              icon: const Icon(
                Icons.add,
              ),
            ),
          ],
        ),
        body: BlocBuilder<GetItemsCubit, GetItemsState>(
          builder: (context, state) {
            if (state is NoItemsState) {
              return const NoDataItems();
            } else if (state is GetItemsSuccess) {
              //print(state.groceryItems);
              return GroceryData(
                items: state.groceryItems,
              );
            } else if (state is GetItemsFailure) {
              return Scaffold(
                body: Center(
                  child: Text(
                    state.errorMessage.toString(),
                  ),
                ),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
