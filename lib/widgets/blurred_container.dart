import 'package:flutter/material.dart';

class BlurredContainer extends StatelessWidget {
  const BlurredContainer({
    super.key,
    required this.width,
    required this.height,
    this.top,
    this.bottom,
    this.left,
    this.right,
    required this.color,
    this.boxRectangle,
  });

  final double width, height;
  final double? top, bottom, left, right;
  final Color color;
  final bool? boxRectangle;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      right: right,
      top: top,
      bottom: bottom,
      child: Container(
        height: height,
        width: width,
        decoration:
            BoxDecoration(color: color.withOpacity(1), shape: boxRectangle == null ? BoxShape.circle : BoxShape.rectangle),
      ),
    );
  }
}
