
import 'package:akaratg_app/core/const/colors/colors.dart';
import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  CustomCircleAvatar({
    super.key,
    required this.mainIcon,
  });
  IconData? mainIcon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 65,
      height: 65,
      child: Stack(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: white,
            child: const Icon(
              Icons.person,
              size: 40,
              color: Color(0xFFA1A5C1),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: CircleAvatar(
              radius: 10,
              backgroundColor: beige,
              child: Icon(
                Icons.edit,
                color: white,
                size: 12,
              ),
            ),
          )
        ],
      ),
    );
  }
}
