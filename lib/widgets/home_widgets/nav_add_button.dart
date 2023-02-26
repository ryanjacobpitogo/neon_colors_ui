import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../../constants.dart';

class NavAddButton extends StatelessWidget {
  const NavAddButton({
    super.key, required this.img, required this.width, required this.height,
  });

  final String img;
  final double width, height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 0.0,
      ),
      child: SizedBox(
        width: width,
        height: height,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.white.withOpacity(0.2),
            child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 0),
                    color: kBlue.withOpacity(0.11),
                    blurRadius: 7,
                    spreadRadius: 7,
                  ),
                  
                ],
                border: const GradientBoxBorder(
                  gradient: LinearGradient(
                    colors: [
                      kMagenta,
                      kGreen,
                    ],
                  ),
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Image.asset(
                img,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
