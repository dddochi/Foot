import 'package:flutter/material.dart';
import 'package:foot/screen/login_screen.dart';
import 'package:foot/screen/mypage_category_screen.dart';
import 'package:foot/screen/mypage_map_screen.dart';
import 'package:foot/screen/post_screen.dart';
import 'package:foot/screen/search_screen.dart';
import 'package:foot/screen/signup_screen.dart';
import 'package:foot/screen/splash_screen.dart';
import 'package:foot/screen/world_category_screen.dart';
import 'package:foot/screen/world_map_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ),
  );
}