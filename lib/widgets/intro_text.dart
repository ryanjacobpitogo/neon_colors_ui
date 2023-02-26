import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../constants.dart';

class IntroText extends StatelessWidget {
  const IntroText({super.key, required this.headline, required this.desc});

  final String headline, desc;

  @override
  Widget build(BuildContext context) {
    double mediaWidth = MediaQuery.of(context).size.width;
    return Positioned(
      top: mediaWidth * 1.15,
      child: SizedBox(
        width: mediaWidth,
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20),
                child: Text(
                  headline,
                  style: GoogleFonts.openSans(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60, right: 60, bottom: 30),
                child: Text(
                  desc,
                  style:
                      GoogleFonts.openSans(color: kOpaqueBlack75, fontSize: 17),
                  textAlign: TextAlign.center,
                ),
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: (){},
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                        border: const GradientBoxBorder(
                            gradient: LinearGradient(
                              colors: [kMagenta, kGreen],
                            ),
                            width: 2.5),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: 6.0, horizontal: 20),
                      child: Text(
                        "Sign up",
                        style: GoogleFonts.openSans(fontSize: 17),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
