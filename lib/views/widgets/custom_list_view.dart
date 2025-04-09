import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/notes_item.dart';
import 'package:notes_app/views/writing_note_view.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 7,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: NotesItem(
            onTap: () => WritingNoteView(),
          ),
        );
      },
    );
  }
}
