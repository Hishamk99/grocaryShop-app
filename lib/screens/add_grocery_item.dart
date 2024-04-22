import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/cubit/get_items_cubit/get_items_cubit.dart';
import 'package:shop_app/data/categories.dart';
import 'package:shop_app/models/category_model.dart';
import 'package:shop_app/models/grocery_model.dart';
import 'package:shop_app/services/api.dart';
import 'package:shop_app/widgets/custom_text_form_field.dart';

class AddGroceryItem extends StatefulWidget {
  const AddGroceryItem({super.key});
  static String id = 'AddGroceryItem';

  @override
  State<AddGroceryItem> createState() => _AddGroceryItemState();
}

class _AddGroceryItemState extends State<AddGroceryItem> {
  GlobalKey<FormState> formKey = GlobalKey();
  String? name;
  int quantity = 0;
  CategoryModel selectedCategory = categories[Categories.meat]!;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text("Add Grocery Item"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                CustomTextFormField(
                  onSaved: (val) {
                    name = val;
                  },
                  text: 'Name',
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: CustomTextFormField(
                        onSaved: (val) {
                          quantity = int.parse(val!);
                        },
                        text: 'Quantity',
                        initialValue: '1',
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: DropdownButtonFormField(
                        value: selectedCategory,
                        onChanged: (value) {
                          selectedCategory = value!;
                        },
                        items: dropDownList,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        formKey.currentState!.reset();
                      },
                      child: const Text('Reset'),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                          Api()
                              .post(
                            url:
                                'https://grocary-shop-default-rtdb.firebaseio.com/shopping-list.json',
                            body: json.encode(
                              {
                                'name': name,
                                'quantity': quantity.toString(),
                                'category': selectedCategory.title
                              },
                            ),
                          )
                              .then(
                            (response) {
                              final Map<String, dynamic> data = response;
                              BlocProvider.of<GetItemsCubit>(context).addItem(
                                item: GroceryModel(
                                  id: data['name'],
                                  name: name!,
                                  quantity: quantity.toString(),
                                  categoryItem: selectedCategory,
                                ),
                              );
                              Navigator.of(context).pop();
                            },
                          );
                        }
                      },
                      child: const Text('Add'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<DropdownMenuItem<CategoryModel>> get dropDownList {
    return [
      for (final category in categories.entries)
        DropdownMenuItem(
          value: category.value,
          child: Row(
            children: [
              Container(
                height: 16,
                width: 16,
                color: category.value.color,
              ),
              const SizedBox(
                width: 6,
              ),
              Text(
                category.value.title,
              ),
            ],
          ),
        ),
    ];
  }
}
