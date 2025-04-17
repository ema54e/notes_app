import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants/colors.dart';
import 'package:notes_app/models/notes_model.dart';

part 'add_notes_state.dart';

//////This is the class where you manage and emit states

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

  addNotes(NotesModel notes) async {
    emit(AddNotesLoading());
    try {
      var note = Hive.box(kMyBox);
      await note.add(notes);
      emit(AddNotesSuccess());
    } catch (e) {
      AddNotesFailure(e.toString());
    }
  }
}
