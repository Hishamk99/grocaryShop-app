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
      decoration: InputDecoration(
        labelText: text,
      ),
    );
  }
}
