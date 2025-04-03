import 'package:flutter/material.dart';

class CustomSearchButtom extends StatelessWidget {
  const CustomSearchButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color.fromRGBO(225, 225, 225, 0.3),
      ),
      child: Center(
        child: Icon(
          Icons.search,
          size: 30,
        ),
      ),
    );
  }
}
