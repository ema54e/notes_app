import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants/colors.dart';
import 'package:notes_app/models/notes_model.dart';

part 'show_notes_state.dart';

class ShowNotesCubit extends Cubit<ShowNotesCubitState> {
  ShowNotesCubit() : super(ShowNotesCubitInitial());
  fitchNotes() {
    try {
      var note = Hive.box<NotesModel>(kMyBox);
      List<NotesModel> notes=note.values.toList();
      emit(ShowNotesCubitSuccess());
    } catch (e) {
      emit(ShowNotesCubitFailure(e.toString()));
    }
  }
}
