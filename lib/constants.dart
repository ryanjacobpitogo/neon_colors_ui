import 'package:flutter/material.dart';
import 'my_flutter_app_icons.dart';
//colors
const kBlack = Color(0xFF19191B);
const kMagenta = Color(0xFFFE53BB);
const kBlue = Color(0xFF08F7FE);
const kGreen = Color(0xFF09FBD3);
const kAmber = Color(0xFFF2A33A);
const kOpaqueBlack20 = Color.fromRGBO(255, 255, 255, .2);
const kOpaqueBlack75 = Color.fromRGBO(255, 255, 255, .75);

//Text List
List<dynamic> text = [
  ["Watch movies in Virtual Reality", "Download and watch offline wherever you are"],
  ["Be informed of the latest Blockbusters", "Sign up now and avail 1 month free trial"],
  ["See movies beyond cognition", "In VRRRRito, we only serve the best experience"]
];

//Masks
const String mask0 = 'assets/images/masks/mask0.png';
const String mask1 = 'assets/images/masks/mask1.png';
const String maskCast = 'assets/images/masks/mask_cast.png';
const String mask2 = 'assets/images/masks/mask2.png';

//Images - New Movies
List<String> newMovies = [
  'assets/images/posters/spiderman_poster.png',
  'assets/images/posters/matrix_poster.png',
  'assets/images/posters/eternals_poster.png',
];

//Images - Upcoming Movies
List<String> upcomingMovies = [
  'assets/images/posters/aquaman_poster.png',
  'assets/images/posters/batman_poster.png',
  'assets/images/posters/sonic_poster.png',
];

//People
List<Map<String, dynamic>> people = [
  {"name": "Angelina Jolie", "img": "assets/images/people/angelina.png"},
  {"name": "Gemma Chan", "img": "assets/images/people/gemma.png"},
  {"name": "Salma Hayek", "img": "assets/images/people/salma.png"},
  {"name": "Richard Madden", "img": "assets/images/people/richard.png"},
];

//Icons
List<IconData> iconList = [
  MyFlutterApp.home,
  MyFlutterApp.stream,
  MyFlutterApp.library,
  MyFlutterApp.download
];