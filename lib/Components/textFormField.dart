import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class textFormField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool isNumber;
  final TextEditingController controller;
  const textFormField ({super.key,required this.hintText,
    required this.icon,
    required this.controller,
    this.isNumber = false,});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: Theme
            .of(context)
            .colorScheme
            .primary
            .withOpacity(1),
        filled: true,
        hintText: hintText,
        prefixIcon: Icon(
          icon,
          color: Theme
              .of(context)
              .colorScheme
              .background,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
              16.0), // Adjust the radius as needed
        ),
      ),
    );
  }
}
