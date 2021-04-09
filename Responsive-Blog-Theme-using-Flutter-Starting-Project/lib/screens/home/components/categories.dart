import 'package:flutter/material.dart';
import 'package:news/screens/home/components/sidebar_container.dart';

import '../../../constants.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
      title: "Categories",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Category(
            title: "Artifial",
            numOfItems: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String title;
  final int numOfItems;
  final VoidCallback press;

  const Category({
    Key key,
    @required this.title,
    @required this.numOfItems,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
      child: TextButton(
        onPressed: () {},
        child: Text.rich(
          TextSpan(
              text: title,
              style: TextStyle(
                color: kBodyTextColor,
              ),
              children: [
                TextSpan(
                  text: " ($numOfItems)",
                  style: TextStyle(color: kBodyTextColor),
                )
              ]),
        ),
      ),
    );
  }
}
