import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_Icon_bottom.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key,
      required this.icon,
      required this.onTap,
      required this.title,
      required this.fontSize,
      this.isLoading = false});
  final IconData icon;
  final VoidCallback onTap;
  final String title;
  final double fontSize;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: fontSize,
          ),
        ),
        CustomIconButtom(icon: icon, onTap: onTap, isLoading: isLoading),
      ],
    );
  }
}
