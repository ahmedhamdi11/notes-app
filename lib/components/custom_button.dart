import 'package:flutter/material.dart';
import 'package:my_notes/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.onPressed, this.isLoading = false});

  final void Function()? onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: kPrimaryColor, borderRadius: BorderRadius.circular(8.0)),
      child: MaterialButton(
        height: 55,
        onPressed: onPressed,
        child: isLoading
            ? const SizedBox(
                width: 25.0,
                height: 25.0,
                child: CircularProgressIndicator(
                  color: Colors.black,
                ))
            : const Text(
                'add',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
      ),
    );
  }
}
