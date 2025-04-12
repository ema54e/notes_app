import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';


class WritingNoteView extends StatelessWidget {
  const WritingNoteView({super.key});
  static String id = 'write notes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Note'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomTextField(
                  inputTextSize: 32,
                  maxLength: 40,
                  hint: 'Title',
                  borderside: BorderSide(color: Colors.black, width: 0.00001),
                  fontSize: 32,
                ),
                Expanded(
                  child: CustomTextField(
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
          ),
        ));
  }
}
