import 'package:flutter/material.dart';

import 'category_component.dart';
import 'category_component_set.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    bool addPostOrCategory = false;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Category',
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              /*
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        addPostOrCategory = !addPostOrCategory;
                      });
                    },
                    child: Icon(Icons.add_circle_outline_sharp),
                  ),
                  if (addPostOrCategory)
                    IconButton(
                      onPressed: () {
                      },
                      icon: Icon(Icons.toc),
                    ),
                  if (addPostOrCategory)
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.post_add),
                    ),
                ],
              ),

               */
            ],
          ),
        ),
        CategoryComponentSet(),
      ],
    );
  }
}
