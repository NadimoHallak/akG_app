import 'package:akaratg_app/core/const/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UnVisibleTextField extends StatefulWidget {
  UnVisibleTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.obscure = true,
  });
  final TextEditingController controller;
  final String hintText;
  bool obscure;

  @override
  State<UnVisibleTextField> createState() => _UnVisibleTextFieldState();
}

class _UnVisibleTextFieldState extends State<UnVisibleTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
        hintText: 'كلمة المرور',
        prefixIcon: IconButton(
          onPressed: () {
            setState(() {
              widget.obscure = !widget.obscure;
            });
          },
          icon: !widget.obscure
              ? const Icon(Icons.visibility_outlined)
              : const Icon(Icons.visibility_off_outlined),
        ),
      ),
      obscureText: widget.obscure,
    );
  }
}
