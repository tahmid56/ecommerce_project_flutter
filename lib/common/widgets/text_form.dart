import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomTextForm extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final int maxLines;

  const CustomTextForm({
    super.key,
    required this.textEditingController,
    required this.hintText,
    this.maxLines = 1
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      decoration: InputDecoration(
          hintText: hintText,
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black26,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
            color: Colors.black26,
          ))),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Enter your $hintText";
        }
      },
      maxLines: maxLines,
    );
  }
}
