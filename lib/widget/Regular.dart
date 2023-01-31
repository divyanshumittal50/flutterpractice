// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Regular extends StatelessWidget {
  String text;
  String ?fontfamily;
  double size;
  Color color;
  int? lines;
  bool? start;
  bool? isunderline;
  FontWeight? fontWeight;
  Regular(
      {Key? key,
      required this.text,
      required this.size,
      required this.color,
      this.isunderline,
      this.fontWeight,
      this.lines,
      this.start,
      this.fontfamily})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return (lines == null)
        ? Text(
            text,
            textAlign: (start != null) ? TextAlign.start : TextAlign.center,
            style: TextStyle(
              fontSize: size,
              color: color,
              fontWeight: fontWeight ?? FontWeight.w400,
              fontFamily:fontfamily?? GoogleFonts.poppins().fontFamily,
              decoration: isunderline ?? false
                  ? TextDecoration.underline
                  : TextDecoration.none,
              decorationStyle: TextDecorationStyle.solid,
            ),
          )
        : Text(
            text,
            textAlign: (start != null) ? TextAlign.start : TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: lines,
            softWrap: false,
            style: TextStyle(
              fontSize: size,
              color: color,
              fontWeight: fontWeight ?? FontWeight.w400,
              fontFamily:fontfamily?? GoogleFonts.poppins().fontFamily,
              decoration: isunderline ?? false
                  ? TextDecoration.underline
                  : TextDecoration.none,
              decorationStyle: TextDecorationStyle.dashed,
            ),
          );
  }
}
