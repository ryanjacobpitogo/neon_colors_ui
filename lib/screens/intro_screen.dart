import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/intro_widgets/intro_page.dart';
import '../widgets/intro_widgets/intro_page_indicator.dart';

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
          IntroPageIndicator(mediaWidth: mediaWidth, currentPage: _currentPage, finalPage: _finalPage),
        ],
      ),
    );
  }
}

