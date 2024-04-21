import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.text,
    this.initialValue = '',
  });
  final String text;
  final String initialValue;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      validator: (value) {
        if (text == 'Quantity' &&
            (value!.isEmpty ||
                int.tryParse(value) == null ||
                int.tryParse(value)! <= 0)) {
          return 'Must be a valid number, positive number';
        } else if (text == 'Name' && value!.isEmpty) {
          return 'Field is required';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: text,
      ),
    );
  }
}
