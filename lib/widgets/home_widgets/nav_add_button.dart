import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../../constants.dart';

class NavAddButton extends StatelessWidget {
  const NavAddButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 0.0,
      ),
      child: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white.withOpacity(0.2),
        child: Container(
          height: 70,
          width: 70,
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
            "assets/images/icons/add_icon.png",
          ),
        ),
      ),
    );
  }
}
