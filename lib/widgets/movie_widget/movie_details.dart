import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neon_colors_ui/widgets/movie_widget/star_rating.dart';

import '../../constants.dart';
import 'circle_avatars.dart';
import 'circular_spacer.dart';
import 'movie_description.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({
    super.key,
    required this.mediaHeight,
    required this.mediaWidth,
  });

  final double mediaHeight;
  final double mediaWidth;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: mediaHeight / 2.4,
      child: SizedBox(
        width: mediaWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Eternals",
              style: GoogleFonts.openSans(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                MovieDescription(text: "2021", fSize: 16),
                CircularSpacer(),
                MovieDescription(
                    text: "Action-Adventure-Fantasy", fSize: 16),
                CircularSpacer(),
                MovieDescription(text: "2h36m", fSize: 16),
              ],
            ),
            const SizedBox(height: 20),
            const StarRating(),
            const Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 50.0, vertical: 20),
              child: MovieDescription(
                text:
                    "The saga of the Eternals, a race of immortal beings who lived on Earth and shaped its history and civilizations.",
                fSize: 17,
              ),
            ),
            const Divider(
              color: Color.fromRGBO(255, 255, 255, 0.15),
              thickness: 2,
              indent: 50,
              endIndent: 50,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              width: mediaWidth,
              child: Text(
                "Casts",
                style: GoogleFonts.openSans(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatars(mediaWidth: mediaWidth, name: people[0]['name'], img: people[0]['img']),
                CircleAvatars(mediaWidth: mediaWidth, name: people[1]['name'], img: people[1]['img']),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatars(mediaWidth: mediaWidth, name: people[2]['name'], img: people[2]['img']),
                CircleAvatars(mediaWidth: mediaWidth, name: people[3]['name'], img: people[3]['img']),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
