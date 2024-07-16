import 'package:akaratg_app/core/const/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VisibleTextField extends StatelessWidget {
  const VisibleTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.keyboardType,
  });
  final TextEditingController controller;
  final String hintText;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      textDirection: TextDirection.rtl,
      decoration: InputDecoration(
        hintTextDirection: TextDirection.rtl,
        hintStyle: GoogleFonts.tajawal(color: hintTextColor),
        filled: true,
        fillColor: white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        hintText: hintText,
      ),
    );
  }
}
