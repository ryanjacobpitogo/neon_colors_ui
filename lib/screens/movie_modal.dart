import 'package:flutter/material.dart';
import 'package:neon_colors_ui/widgets/home_widgets/nav_add_button.dart';

import '../widgets/movie_widget/movie_details.dart';
import '../widgets/movie_widget/movie_image.dart';
import '../widgets/movie_widget/opaque_appbar.dart';

class MovieModal extends StatelessWidget {
  const MovieModal({super.key});

  @override
  Widget build(BuildContext context) {
    double mediaHeight = MediaQuery.of(context).size.height;
    double mediaWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const OpaqueAppBar(),
      body: Stack(
        children: [
          const MovieImage(),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: mediaHeight / 2.05,
              width: mediaWidth,
              color: Colors.black,
            ),
          ),
          MovieDetails(mediaHeight: mediaHeight, mediaWidth: mediaWidth)
        ],
      ),
      floatingActionButton: const NavAddButton(img: "assets/images/icons/play_icon.png", width: 65, height: 65),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}

