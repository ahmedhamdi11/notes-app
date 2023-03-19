import 'package:flutter/material.dart';
import 'package:my_notes/components/custom_button.dart';
import 'package:my_notes/components/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(
              height: 32.0,
            ),
            CustomTextField(
              hintText: 'Title',
            ),
            SizedBox(
              height: 12.0,
            ),
            CustomTextField(
              hintText: 'Content',
              maxLines: 5,
            ),
            SizedBox(
              height: 32.0,
            ),
            CustomButton(),
            SizedBox(
              height: 32.0,
            )
          ],
        ),
      ),
    );
  }
}
