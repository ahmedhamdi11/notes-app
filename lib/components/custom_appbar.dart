import 'package:flutter/material.dart';
import 'package:my_notes/components/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 28),
        ),
        GestureDetector(
          onTap: () {},
          child: CustomIcon(
            icon: icon,
          ),
        ),
      ],
    );
  }
}
