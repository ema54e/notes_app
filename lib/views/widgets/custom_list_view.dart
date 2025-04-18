import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/show_notes_cubit/show_notes_cubit.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/views/widgets/notes_item.dart';
import 'package:notes_app/views/writing_note_view.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShowNotesCubit, ShowNotesCubitState>(
      builder: (context, state) {
        List<NotesModel> notes = BlocProvider.of<ShowNotesCubit>(context).notes;
        return ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: NotesItem(
                onTap: () => WritingNoteView(),
                notes: notes[index],
              ),
            );
          },
        );
      },
    );
  }
}
