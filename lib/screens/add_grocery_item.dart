import 'package:flutter/material.dart';
import 'package:shop_app/data/categories.dart';
import 'package:shop_app/models/category_model.dart';
import 'package:shop_app/widgets/custom_text_form_field.dart';

class AddGroceryItem extends StatefulWidget {
  const AddGroceryItem({super.key});
  static String id = 'AddGroceryItem';

  @override
  State<AddGroceryItem> createState() => _AddGroceryItemState();
}

class _AddGroceryItemState extends State<AddGroceryItem> {
  GlobalKey<FormState> formKey = GlobalKey();
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
                const CustomTextFormField(
                  text: 'Name',
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Expanded(
                      child: CustomTextFormField(
                        text: 'Quantity',
                        initialValue: '1',
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: DropdownButtonFormField(
                        onChanged: (value) {},
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
                      onPressed: () {},
                      child: const Text('Reset'),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    ElevatedButton(
                      onPressed: () {},
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
