import 'package:flutter/material.dart';

import '../const/colors.dart';

class PostScreen extends StatelessWidget {
  final String title;
  final String category;
  final String date;
  const PostScreen({
    required this.title,
    required this.category,
    required this.date,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 85.0),
            child: Column(
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  children: [
                    SizedBox(width: 20.0),
                    Text(
                      'Category',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(width: 20.0),
                    Text(category),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    SizedBox(width: 20.0),
                    Text(
                      'Date',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(width: 50.0),
                    Text(date),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 1.3,
                  color: LIGHT_GREY_COLOR,
                ),
              ],
            ),
          ),
          _PostContent(),
        ],
      ),
    );
  }
}

class _PostContent extends StatelessWidget {
  const _PostContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Center(child: Text('Post')));
  }
}
