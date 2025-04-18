import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_cubit/add_notes_cubit.dart';
import 'package:notes_app/views/widgets/form_validate_inputes.dart';

class WritingNoteView extends StatelessWidget {
  const WritingNoteView({super.key});
  static String id = 'write notes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => AddNotesCubit(),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: BlocListener<AddNotesCubit, AddNotesState>(
              listener: (context, state) {
                if (state is AddNotesFailure) {
                  print(AddNotesFailure('failes ${state.errorMessage}'));
                }
                if (state is AddNotesSuccess) {
                  Navigator.pop(context);
                }
              },
              child: FormValidateInputs()),
        ),
      ),
    );
  }
}
