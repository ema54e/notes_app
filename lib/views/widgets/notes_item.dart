import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/constants/colors.dart';
import 'package:notes_app/cubits/show_notes_cubit/show_notes_cubit.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:intl/intl_browser.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key, required this.onTap, required this.notes});
  final VoidCallback onTap;
  final NotesModel notes;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 200,
        padding: EdgeInsets.only(top: 24, bottom: 24, left: 24, right: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 36, 36, 36),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text(
                notes.title,
                style: TextStyle(
                  fontSize: 26,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  notes.content,
                  style: TextStyle(fontSize: 18, color: subTextColor),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  notes.delete();
                  BlocProvider.of<ShowNotesCubit>(context).fitchNotes();
                },
                icon: Icon(
                  FontAwesomeIcons.trash,
                  size: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(
                notes.date,
                style: TextStyle(color: subTextColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
