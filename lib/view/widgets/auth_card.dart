import 'package:akaratg_app/core/const/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:glass/glass.dart';

class AuthCard extends StatelessWidget {
  AuthCard({
    super.key,
    required this.widget,
    required this.formStateKey,
    this.height = 383,
  });

  Widget? widget;
  final GlobalKey<FormState> formStateKey;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        width: 366,
        height: height,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: widget,
      ),
    ).asGlass(
        tileMode: TileMode.clamp, clipBorderRadius: BorderRadius.circular(16));
  }
}
