import 'package:flutter/material.dart';

class Customtextfeild extends StatelessWidget {

  final String hintText;

  const Customtextfeild({
    super.key ,
    required this.hintText,
});

  @override
  Widget build(BuildContext context) {
    return TextField(

      decoration: InputDecoration(

        hintText: hintText,
      ),
    );
  }
}
