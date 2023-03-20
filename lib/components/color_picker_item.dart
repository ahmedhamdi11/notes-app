import 'package:flutter/material.dart';

class ColorPickerItem extends StatelessWidget {
  const ColorPickerItem({Key? key, required this.isPicked, required this.color})
      : super(key: key);
  final bool isPicked;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: CircleAvatar(
        radius: 20,
        backgroundColor: color,
        child: isPicked ? const Icon(Icons.check) : null,
      ),
    );
  }
}
