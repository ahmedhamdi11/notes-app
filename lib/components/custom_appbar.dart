import 'package:flutter/material.dart';
import 'package:my_notes/components/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Notes',
          style: TextStyle(fontSize: 28),
        ),
        CustomSearchIcon(),
      ],
    );
  }
}
