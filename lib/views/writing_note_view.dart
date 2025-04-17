import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_cubit/add_notes_cubit.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class WritingNoteView extends StatelessWidget {
  const WritingNoteView({super.key});
  static String id = 'write notes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: BlocConsumer<AddNotesCubit, AddNotesState>(
          listener: (context, state) {
            if (state is AddNotesFailure) {
              print(AddNotesFailure('failes ${state.errorMessage}'));
            }
            if (state is AddNotesSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: state is AddNotesLoading ? true : false,
                child: FormValidateInputs());
          },
        ),
      ),
    );
  }
}

class FormValidateInputs extends StatefulWidget {
  const FormValidateInputs({
    super.key,
  });

  @override
  State<FormValidateInputs> createState() => _FormValidateInputsState();
}

class _FormValidateInputsState extends State<FormValidateInputs> {
  final _keyForm = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _keyForm,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomAppBar(
            icon: Icons.check,
            onTap: () {
              if (_keyForm.currentState!.validate()) {
                _keyForm.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
            title: '.',
            fontSize: 25,
          ),
          CustomTextField(
            onSaved: (value) {
              value = title;
            },
            inputTextSize: 32,
            maxLength: 40,
            hint: 'Title',
            borderside: BorderSide(color: Colors.black, width: 0.00001),
            fontSize: 32,
          ),
          Expanded(
            child: CustomTextField(
              onSaved: (value) {
                value = subTitle;
              },
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
    );
  }
}
