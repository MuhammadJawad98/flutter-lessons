import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obsureText;
  final Function(String)? onChanged;
  const CustomTextField({Key? key, required this.controller,
    required this.hintText, this.obsureText=false, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        obscureText: obsureText,
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly
        ], // Only numbers can be entered
        decoration: InputDecoration(hintText: hintText),
        onChanged: onChanged);
  }
}
