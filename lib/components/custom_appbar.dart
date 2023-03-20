import 'package:flutter/material.dart';
import 'package:my_notes/components/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon, this.onIconTap});
  final String title;
  final Icon icon;
  final void Function()? onIconTap;
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
          onTap: onIconTap,
          child: CustomIcon(
            icon: icon,
          ),
        ),
      ],
    );
  }
}
