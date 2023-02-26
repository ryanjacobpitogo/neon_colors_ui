import 'package:flutter/material.dart';

import '../../constants.dart';

class CircularSpacer extends StatelessWidget {
  const CircularSpacer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 1, left: 4, right: 4),
      height: 5,
      width: 5,
      decoration: const BoxDecoration(
          color: kOpaqueBlack75, shape: BoxShape.circle),
    );
  }
}


