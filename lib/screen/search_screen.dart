import 'package:flutter/material.dart';
import 'package:foot/component/friend_post_set.dart';
import 'package:foot/const/colors.dart';

import '../component/main_menu_bar.dart';
import '../component/search_bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MAIN_BLUE_COLOR,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 80, 0, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SearchBar(),
            _HotPost(),
            MainMenuBar(),
          ],
        ),
      ),
    );
  }
}

class _HotPost extends StatelessWidget {
  const _HotPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0,),
            child: Row(
              children: [
                Text(
                  'Hot Post',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          FriendPostSet(),
        ],
      ),
    );
  }
}
