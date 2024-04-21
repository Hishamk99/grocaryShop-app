import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_app/widgets/custom_text_form_field.dart';

class AddGroceryItem extends StatelessWidget {
  const AddGroceryItem({super.key});
  static String id = 'AddGroceryItem';
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
                        items: [],
                      ),
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
}
