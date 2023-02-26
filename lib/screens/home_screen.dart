import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/home_widgets/home_header.dart';
import '../widgets/home_widgets/home_page.dart';
import '../widgets/home_widgets/movie_carousel.dart';
import '../widgets/home_widgets/movie_title_list.dart';
import '../widgets/home_widgets/nav_add_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    int bottomNavIndex = 0;
    return Scaffold(
      extendBody: true,
      body: Center(
        child: Stack(
          children: [
            const HomePage(),
            CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                const HomeHeader(),
                const MovieListTitle(
                  title: "New Movies",
                  paddingTop: 25,
                ),
                MovieCarousel(movieList: newMovies),
                const MovieListTitle(
                  title: "Upcoming Movies",
                  paddingTop: 10,
                ),
                MovieCarousel(movieList: upcomingMovies),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: const NavAddButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: Colors.white.withOpacity(0.05),
        blurEffect: true,
        inactiveColor: Colors.white,
        activeColor: Colors.white,
        gapLocation: GapLocation.center,
        notchMargin: 5,
        notchSmoothness: NotchSmoothness.defaultEdge,
        icons: iconList,
        activeIndex: bottomNavIndex,
        onTap: (index) => setState(() => bottomNavIndex = index),
      ),
    );
  }
}
