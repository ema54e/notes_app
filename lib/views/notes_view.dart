import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';
import 'package:notes_app/views/writing_note_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String id = "home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        elevation: 20,
        shape: CircleBorder(),
        backgroundColor: Color(0xffEBA102),
        onPressed: () {
             Navigator.pushNamed(context, WritingNoteView.id);
         /*  showModalBottomSheet(
              context: context,
              builder: (context) {
                return Container();
              }); */
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
