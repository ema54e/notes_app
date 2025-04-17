import 'package:flutter/material.dart';

class CustomIconButtom extends StatelessWidget {
  const CustomIconButtom({super.key, required this.icon, required this.onTap});
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color.fromRGBO(225, 225, 225, 0.3),
        ),
        child: Center(
          child: Icon(icon
            ,
            size: 30,
          ),
        ),
      ),
    );
  }
}
