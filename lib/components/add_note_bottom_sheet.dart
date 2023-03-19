import 'package:flutter/material.dart';
import 'package:my_notes/components/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomTextField(
          hintText: 'Title',
        ),
        CustomTextField(
          hintText: 'Content',
          maxLines: 5,
        )
      ],
    );
  }
}
