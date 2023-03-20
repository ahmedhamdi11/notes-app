import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:my_notes/components/custom_button.dart';
import 'package:my_notes/components/custom_text_field.dart';
import 'package:my_notes/components/note_color_picker.dart';
import 'package:my_notes/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:my_notes/models/note_model.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({Key? key}) : super(key: key);

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title, supTitle;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddNoteCubit, AddNoteState>(
      builder: (context, state) {
        return Form(
          key: formKey,
          autovalidateMode: autoValidateMode,
          child: Column(

            children: [
              const SizedBox(
                height: 28.0,
              ),
              CustomTextField(
                autoFocus: true,
                hintText: 'Title',
                onSaved: (value) {
                  title = value;
                },
              ),
              const SizedBox(
                height: 12.0,
              ),
              CustomTextField(
                hintText: 'Content',
                maxLines: 5,
                onSaved: (value) {
                  supTitle = value;
                },
              ),
              const SizedBox(
                height: 18.0,
              ),
              const NoteColorPicker(),
              const SizedBox(
                height: 28.0,
              ),
              CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var noteModel = NoteModel(
                        title: title!,
                        content: supTitle!,
                        date: DateFormat.yMMMd().format(DateTime.now()),
                        color: Colors.yellow.value);
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    setState(() {
                      autoValidateMode = AutovalidateMode.always;
                    });
                  }
                },
              ),
              const SizedBox(
                height: 28.0,
              )
            ],
          ),
        );
      },
    );
  }
}
