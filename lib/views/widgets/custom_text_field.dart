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
      this.inputTextSize});
  final String hint;
  final BorderSide borderside;
  final double fontSize;
  final int maxLines;
  final int? maxLength;
  final double? inputTextSize;

  @override
  Widget build(BuildContext context) {
    return TextField(
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
