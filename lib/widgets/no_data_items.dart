import 'package:flutter/material.dart';

class NoDataItems extends StatelessWidget {
  const NoDataItems({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'There is no item',
        style: TextStyle(
          fontSize: 24,
        ),
      ),
    );
  }
}
