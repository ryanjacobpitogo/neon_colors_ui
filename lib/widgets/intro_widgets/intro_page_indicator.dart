import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../constants.dart';

class IntroPageIndicator extends StatelessWidget {
  const IntroPageIndicator({
    super.key,
    required this.mediaWidth,
    required PageController currentPage,
    required bool finalPage,
  })  : _currentPage = currentPage,
        _finalPage = finalPage;

  final double mediaWidth;
  final PageController _currentPage;
  final bool _finalPage;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Align(
        alignment: Alignment.topCenter,
        child: Row(
          children: [
            SizedBox(width: mediaWidth / 2.22),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: SmoothPageIndicator(
                controller: _currentPage,
                count: text.length,
                effect: const WormEffect(
                  activeDotColor: kBlue,
                  dotColor: kOpaqueBlack20,
                  dotHeight: 7,
                  dotWidth: 7,
                ),
              ),
            ),
            _finalPage
                ? Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Material(
                      color: kBlack,
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/home');
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                          child: SizedBox(
                            width: 175,
                            child: Text(
                              "Done",
                              style: GoogleFonts.openSans(
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                : const SizedBox(
                    width: 10,
                    height: 25,
                  ),
          ],
        ),
      ),
    );
  }
}
