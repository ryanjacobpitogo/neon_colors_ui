import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:neon_colors_ui/constants.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});

  //Page View
  final pageview = PageViewModel(
    titleWidget: const Text(
      "Watch movies in virtual reality",
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
    body:
        "Download and watch offline wherever you are",
    image: Container(
      width: 300,
      height: 300,
      decoration: const BoxDecoration(
        shape: BoxShape.circle
      ),
      child: Image.asset(
        "assets/images/others/intro_vr_lady.png",
        height: 400,
        width: 400,
      ),
    ),
    decoration: const PageDecoration(
      imagePadding: EdgeInsets.only(top: 60),
      titlePadding: EdgeInsets.only(bottom: 24),
      bodyTextStyle:  TextStyle(
        color: kOpaqueBlack75
      ),
      imageFlex: 4,
      bodyFlex: 2,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: kBlack,
        scrollPhysics: const BouncingScrollPhysics(),
        pages: [
          pageview,
          pageview,
          pageview
        ],
        onDone: () {},
        showSkipButton: false,
        showNextButton: false,
        done: const Text(
          "Done",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(10.0, 10.0),
          color: kOpaqueBlack20,
          activeColor: kBlue,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40.0),
          ),
        ),
      ),
    );
  }
}