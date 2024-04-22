import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:shop_app/cubit/get_items_cubit/get_items_cubit.dart';
import 'package:shop_app/models/grocery_model.dart';

import 'grocery_item.dart';

class GroceryData extends StatelessWidget {
  const GroceryData({
    super.key,
    required this.items,
  });
  final List<GroceryModel> items;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Slidable(
          endActionPane: ActionPane(motion: const StretchMotion(), children: [
            SlidableAction(
              onPressed: (context) {
                BlocProvider.of<GetItemsCubit>(context)
                    .delete(id: items[index].id, item: items[index]);
              },
              icon: Icons.delete,
              backgroundColor: Colors.red,
            )
          ]),
          child: GroceryItem(
            item: items[index],
          ),
        );
      },
    );
  }
}
