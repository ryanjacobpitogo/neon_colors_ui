import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:widget_mask/widget_mask.dart';

import '../../constants.dart';

class CircleAvatars extends StatelessWidget {
  const CircleAvatars({
    super.key,
    required this.mediaWidth, required this.name, required this.img,
  });

  final double mediaWidth;
  final String name, img;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10, top: 8),
      child: SizedBox(
        width: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              minRadius: 16,
              maxRadius: mediaWidth <= 375 ? 24 : 30,
              backgroundImage: AssetImage(
                  img),
            ),
            Expanded(
              child: Container(
                constraints: const BoxConstraints(
                  maxHeight: 50,
                  maxWidth: 112,
                ),
                transform: Matrix4.translationValues(-6, 0, 0),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    WidgetMask(
                      blendMode: BlendMode.srcATop,
                      childSaveLayer: true,
                      mask: Image.asset(
                        maskCast,
                        fit: BoxFit.fill,
                        alignment: Alignment.center,
                      ),
                      child: Image.asset(
                        maskCast,
                        height: 120,
                        width: 120,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 5),
                      child: SizedBox(
                        width: 60,
                        child: Text(
                          name,
                          style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
