import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:neon_colors_ui/constants.dart';

import '../general_widgets/blurred_container.dart';
import 'intro_image.dart';
import 'intro_text.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key, required this.headline, required this.desc});

  final String headline, desc;

  @override
  Widget build(BuildContext context) {
    double mediaHeight = MediaQuery.of(context).size.height;
    double mediaWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        SizedBox(
          height: mediaHeight,
          child: Stack(
            children: [
              const BlurredContainer(
                height: 200,
                width: 200,
                color: kMagenta,
                left: 10,
                top: 20,
              ),
              const BlurredContainer(
                height: 200,
                width: 200,
                color: kGreen,
                top: 240,
                right: 0,
              ),
              Positioned(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 75, sigmaY: 75),
                  child: SizedBox(
                    height: mediaHeight / 3,
                    width: double.infinity,
                  ),
                ),
              ),
              Positioned(
                top: mediaWidth * 1.63,
                left: 120,
                child: Container(
                  width: 155,
                  height: 50,
                  decoration: BoxDecoration(
                    border: const GradientBoxBorder(
                      gradient: LinearGradient(
                        colors: [kMagenta, kGreen],
                      ),
                      width: 35,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const IntroImage(),
            ],
          ),
        ),
        IntroText(headline: headline, desc: desc),
      ],
    );
  }
}
