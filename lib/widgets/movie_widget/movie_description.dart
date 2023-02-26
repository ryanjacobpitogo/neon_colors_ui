import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';

class MovieDescription extends StatelessWidget {
  const MovieDescription({
    super.key, required this.text, required this.fSize
  });

  final String text;
  final double fSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
        fontSize: fSize,
        fontWeight: FontWeight.w400,
        color: kOpaqueBlack75,
      ),
      textAlign: TextAlign.center,
    );
  }
}