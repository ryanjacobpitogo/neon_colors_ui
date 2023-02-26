import 'dart:ui';

import 'package:flutter/material.dart';
import '../general_widgets/blurred_container.dart';
import '../../constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double mediaHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        const BlurredContainer(
          height: 150,
          width: 150,
          color: kGreen,
          left: -110,
          top: 10,
        ),
        const BlurredContainer(
          height: 150,
          width: 200,
          color: kMagenta,
          top: 300,
          right: -140,
        ),
        const BlurredContainer(
          height: 150,
          width: 250,
          color: kBlue,
          bottom: -140,
          left: -100,
        ),
         const BlurredContainer(
          height: 50,
          width: 50,
          color: kGreen,
          bottom: 20,
          left: 150,
        ),
        Positioned(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 110, sigmaY: 110),
            child: SizedBox(
              height: mediaHeight,
              width: double.infinity,
            ),
          ),
        ),
      ],
    );
  }
}
