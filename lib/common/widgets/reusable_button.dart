import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  const ReusableButton({super.key, required this.onPressed, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: Text(buttonText), );
  }
}
