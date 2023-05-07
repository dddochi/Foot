import 'package:flutter/material.dart';

import '../component/category_page.dart';
import '../component/main_menu_bar.dart';
import '../component/mode_icon.dart';
import '../component/profile.dart';
import '../component/search_bar.dart';
import 'mypage_map_screen.dart';

class MyPageCategoryScreen extends StatefulWidget {
  const MyPageCategoryScreen({Key? key}) : super(key: key);

  @override
  State<MyPageCategoryScreen> createState() => _MyPageCategoryScreenState();
}

class _MyPageCategoryScreenState extends State<MyPageCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    bool isPlusButtonPressed = false;
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Column(
              children: [
                MyProfile(
                  profileImage: 'asset/img/basic_profile.png',
                ),
                SearchBar(),
                Expanded(
                  flex: 5,
                  child: CategoryPage(),
                ),
              ],
            ),
            Positioned(
              top: 60,
              right: 5,
              child: ModeIcon(
                modeIcon: Icons.join_right_rounded,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => MyPageMapScreen()));
                },
              ),
            ),
            Positioned(
              bottom: 30,
              right: 0,
              left: 0,
              child: MainMenuBar(),
            ),
            Positioned(
              right: 15,
              top: 188.0,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isPlusButtonPressed = !isPlusButtonPressed;
                  });
                },
                child: Icon(Icons.add_circle_outline_sharp),
              ),
            ),
            if (isPlusButtonPressed)
            Positioned(
              right: 15,
              top: 198.0,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.toc),
              ),
            ),
            if (isPlusButtonPressed)
            Positioned( right: 15,
              top: 208.0,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.post_add),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
