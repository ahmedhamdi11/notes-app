import 'package:flutter/material.dart';
import 'package:my_notes/components/cutom_appbar.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(children: const [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(),
        ]),
      ),
    );
  }
}
