import 'package:flutter/material.dart';
import 'package:my_notes/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, this.maxLines = 1, this.onSaved,  this.autoFocus=false});
  final String hintText;
  final int maxLines;
  final bool autoFocus;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      autofocus: autoFocus,
      validator: (value){
        if(value?.isEmpty ?? true){
          return 'field required';
        }else{
          return null;
        }
      },
      maxLines: maxLines ,
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
