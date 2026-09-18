import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {

  final String text;
  final VoidCallback onPressed;

  const Custombutton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
        height: 90,
        child: ElevatedButton(
          onPressed: onPressed, child: Text(text)),
      );
  }
}



