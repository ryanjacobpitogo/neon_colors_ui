import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieListTitle extends StatelessWidget {
  const MovieListTitle({
    super.key, required this.title, required this.paddingTop,
  });

  final String title;
  final double paddingTop;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(top: paddingTop, left: 20),
      sliver: SliverToBoxAdapter(
        child: Text(
          title,
          style: GoogleFonts.openSans(fontSize: 18),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}

