// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, unnecessary_null_comparison

import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final double? fontSize;
  final IconData icon;
  final Function()? onTap;
  final Color? backgroundColor;
  final Color? iconColor;
  final Color? textColor;
  final String text;

  const AppButton({
    super.key,
    this.fontSize = 20,
    required this.icon,
    this.onTap,
    this.backgroundColor,
    this.iconColor,
    this.textColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              icon,
              size: 30,
              color: iconColor,
            ),
          ),
          text != null
              ? Text(
                  text!,
                  style: TextStyle(
                    fontSize: 15,
                    color: textColor,
                    fontFamily: "ProjectFont",
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
