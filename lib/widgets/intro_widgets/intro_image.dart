import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../../constants.dart';


class IntroImage extends StatelessWidget {
  const IntroImage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 35.0,
        sigmaY: 35.0,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 85.0),
        child: Align(
          alignment: AlignmentDirectional.topCenter,
          child: RotationTransition(
            turns: const AlwaysStoppedAnimation(1 / 10),
            child: Container(
              decoration: BoxDecoration(
                border: GradientBoxBorder(
                  gradient: LinearGradient(
                    colors: [
                      kMagenta,
                      kBlack.withOpacity(0.2),
                      kGreen,
                    ],
                  ),
                  width: 5,
                ),
                borderRadius: BorderRadius.circular(200),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(200.0),
                child: Container(
                  width: 325,
                  height: 325,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: const FittedBox(
                    fit: BoxFit.cover,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 120,
                        top: 10,
                        bottom: 30,
                      ),
                      child: RotationTransition(
                        turns: AlwaysStoppedAnimation(65 / 72),
                        child: Image(
                          image: AssetImage(
                            'assets/images/others/intro_vr_lady.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
