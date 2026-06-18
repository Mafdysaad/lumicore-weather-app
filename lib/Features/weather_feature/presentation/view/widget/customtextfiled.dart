import 'package:flutter/material.dart';

class Customtextfield extends StatelessWidget {
  const Customtextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintMaxLines: 1,
        isDense: true,
        fillColor: Color.fromARGB(77, 229, 220, 220),
        hintText: 'Enter city name',
        filled: true,
        hintStyle: TextStyle(fontSize: 18),
        contentPadding: EdgeInsets.symmetric(vertical: 13),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          gapPadding: 10,
        ),
      ),
    );
  }
}
