import 'package:flutter/material.dart';
import 'package:my_notes/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, this.maxLines = 1});
  final String hintText;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0, right: 16.0, left: 16.0),
      child: TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: kPrimaryColor),
          border: fieldBorder(),
          enabledBorder: fieldBorder(),
          focusedBorder: fieldBorder(kPrimaryColor),
        ),
      ),
    );
  }

  OutlineInputBorder fieldBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16.0),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
