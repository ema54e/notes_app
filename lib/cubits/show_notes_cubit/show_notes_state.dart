part of 'show_notes_cubit.dart';

@immutable
sealed class ShowNotesCubitState {}

final class ShowNotesCubitInitial extends ShowNotesCubitState {}

final class ShowNotesCubitSuccess extends ShowNotesCubitState {
 
}

final class ShowNotesCubitFailure extends ShowNotesCubitState {
  final String errMessage;
  ShowNotesCubitFailure(this.errMessage);
}
