import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neon_colors_ui/constants.dart';
import 'package:neon_colors_ui/widgets/intro_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _currentPage = PageController(viewportFraction: 0.99);
  bool _finalPage = false;

  @override
  Widget build(BuildContext context) {
    double mediaWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kBlack,
      body: Stack(
        children: [
          PageView.builder(
            physics: const BouncingScrollPhysics(),
            onPageChanged: (value) => {
              setState(
                () => {_finalPage = (value == text.length - 1)},
              ),
            },
            itemCount: text.length,
            controller: _currentPage,
            itemBuilder: (context, index) =>
                IntroPage(headline: text[index][0], desc: text[index][1]),
          ),
          Positioned(
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
                              onTap: () {},
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
          ),
        ],
      ),
    );
  }
}
