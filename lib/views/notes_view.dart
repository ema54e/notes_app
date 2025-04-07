import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        elevation: 20,
        shape: CircleBorder(),
        backgroundColor: Color(0xffEBA102),
        onPressed: () {},
        child: Icon(
          Icons.add,
          //color: Colors.yellow,
        ),
      ),
    );
  }
}
