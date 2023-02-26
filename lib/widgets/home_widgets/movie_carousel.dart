import 'package:flutter/material.dart';
import 'package:widget_mask/widget_mask.dart';

import '../../constants.dart';

class MovieCarousel extends StatelessWidget {
  const MovieCarousel({
    super.key, required this.movieList,
  });

  final List<String> movieList;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(top: 10),
      sliver: SliverToBoxAdapter(
        child: SizedBox(
          height: 210,
          child: ListView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: movieList.length,
            itemBuilder: (context, index) {
              String mask;
              if (index == 0) {
                mask = mask0;
              } else if (index == movieList.length - 1) {
                mask = mask2;
              } else {
                mask = mask1;
              }
              return InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(
                    left: index == 0 ? 15 : 0,
                    right: index == movieList.length - 1 ? 1 : 0,
                  ),
                  child: WidgetMask(
                    blendMode: BlendMode.srcATop,
                    childSaveLayer: true,
                    mask: Image.asset(
                      movieList[index],
                      fit: BoxFit.fill,
                      alignment: Alignment.center,
                    ),
                    child: Image.asset(
                      mask,
                      height: 170,
                      width: 150,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
