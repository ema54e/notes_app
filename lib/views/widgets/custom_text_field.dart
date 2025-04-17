import 'package:flutter/material.dart';
import 'package:notes_app/constants/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hint,
      required this.borderside,
      required this.fontSize,
      this.maxLines = 1,
      this.maxLength,
      this.inputTextSize, required this.onSaved});
  final String hint;
  final BorderSide borderside;
  final double fontSize;
  final int maxLines;
  final int? maxLength;
  final double? inputTextSize;
  final void Function(String?) onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'this field is reqiured';
        }
      },
      onSaved: onSaved,
      style: TextStyle(fontSize: inputTextSize),
      maxLines: maxLines,
      maxLength: maxLength,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: subTextColor, fontSize: fontSize),
        border: UnderlineInputBorder(borderSide: borderside),
      ),
    );
  }
}
