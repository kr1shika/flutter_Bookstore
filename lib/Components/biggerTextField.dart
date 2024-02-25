import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class biggerTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final IconData icon;
  const biggerTextField({super.key,required this.hintText,
  required this.icon,
  required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      maxLines: 3,
      decoration: InputDecoration(
        fillColor: Theme
            .of(context)
            .colorScheme
            .primary
            .withOpacity(1),
        filled: true,

        hintText: hintText,
        // prefixIcon: Icon(
        //   icon,
        //   color: Theme
        //       .of(context)
        //       .colorScheme
        //       .background,
        // ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
              16.0), // Adjust the radius as needed
        ),
      ),
    );
  }
}
