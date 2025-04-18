import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_cubit/add_notes_cubit.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class FormValidateInputs extends StatefulWidget {
  const FormValidateInputs({
    super.key,
  });

  @override
  State<FormValidateInputs> createState() => _FormValidateInputsState();
}

class _FormValidateInputsState extends State<FormValidateInputs> {
  final _keyForm = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _keyForm,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          BlocBuilder<AddNotesCubit, AddNotesState>(
            builder: (context, state) {
              return CustomAppBar(
                icon: Icons.check,
                isLoading: state is AddNotesLoading? true: false,
                onTap: () {
                  if (_keyForm.currentState!.validate()) {
                    _keyForm.currentState!.save();
                    var notes = NotesModel(
                        title: title!,
                        content: subTitle!,
                        date: DateTime.now().toString());
                    BlocProvider.of<AddNotesCubit>(context).addNotes(notes);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
                title: '.',
                fontSize: 25,
              );
            },
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            inputTextSize: 32,
            maxLength: 40,
            hint: 'Title',
            borderside: BorderSide(color: Colors.black, width: 0.00001),
            fontSize: 32,
          ),
          Expanded(
            child: CustomTextField(
              onSaved: (value) {
                subTitle = value;
              },
              inputTextSize: 20,
              maxLength: 500,
              hint: 'content',
              maxLines: 200,
              borderside: BorderSide.none,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
