import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String label;
  final Icon icon;
  // final Function() onTap;
  final VoidCallback onTap;
  const CustomElevatedButton({Key? key, required this.label, required this.icon, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onTap,
      icon: icon,
      label: Text(label),
    );
  }
}
