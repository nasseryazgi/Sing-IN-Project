import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFormFIeld extends StatelessWidget {
  final String hinitText;
  final IconData suffixIcon;
  const CustomTextFormFIeld({
    super.key,
    required this.hinitText,
    required this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextFormField(
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[200]!)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Colors.grey[200]!)),
            border: OutlineInputBorder(),
            filled: true,
            suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
            hintText: hinitText,
            fillColor: Colors.grey[300],
            hintStyle: TextStyle(color: Colors.grey[600])),
      ),
    );
  }
}
