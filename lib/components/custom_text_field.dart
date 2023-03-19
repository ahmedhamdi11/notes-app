import 'package:flutter/material.dart';
import 'package:my_notes/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, this.maxLines = 1});
  final String hintText;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: kPrimaryColor),
        border: fieldBorder(),
        enabledBorder: fieldBorder(),
        focusedBorder: fieldBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder fieldBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
