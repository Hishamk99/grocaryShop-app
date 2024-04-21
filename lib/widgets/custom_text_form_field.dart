import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.text,
    this.initialValue = '',
    required this.onSaved,
    this.keyboardType = TextInputType.name,
  });
  final String text;
  final String initialValue;
  final TextInputType? keyboardType;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      initialValue: initialValue,
      validator: (value) {
        if (text == 'Quantity' &&
            (value!.isEmpty ||
                int.tryParse(value) == null ||
                int.tryParse(value)! <= 0)) {
          return 'Must be a positive number';
        } else if (text == 'Name' &&
            (value!.isEmpty ||
                value.trim().length <= 1 ||
                value.trim().length >= 50)) {
          return 'Field is required';
        }
        return null;
      },
      onSaved: onSaved,
      decoration: InputDecoration(
        labelText: text,
      ),
    );
  }
}
