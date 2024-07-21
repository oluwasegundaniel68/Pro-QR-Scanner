import 'dart:ui';

import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText(
      {super.key,
        required this.inputText,
        required this.fontSize,
        required this.weight,
        required this.color,
        this.fontFamily,
        this.decColor,
        this.softWrap,
        this.letterSpacing,
        this.textAlign,
        this.overflow,
        this.maxLines,
        this.decoration,
        this.fontStyle = FontStyle.normal});

  final String inputText;
  final double fontSize;
  final FontWeight weight;
  final Color color;
  final Color? decColor;
  String? fontFamily;
  bool? softWrap;
  double? letterSpacing;
  TextAlign? textAlign;
  TextDecoration? decoration;
  FontStyle? fontStyle;
  TextOverflow? overflow;
  int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      inputText,
      textAlign: textAlign,
      softWrap: softWrap,
      overflow: overflow,
      maxLines: maxLines,
      style: GoogleFonts.poppins(
          decoration:decoration,
          letterSpacing: letterSpacing,
          fontSize: fontSize,
          decorationColor:decColor,
          fontStyle: fontStyle,
          fontWeight: weight,
          color: color),
    );
  }
}
