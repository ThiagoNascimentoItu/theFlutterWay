import 'package:flutter/material.dart';
import 'package:news/constants.dart';

class SidebarContainer extends StatelessWidget {
  final Widget child;
  final String title;
  const SidebarContainer({
    Key key,
    @required this.child,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(kDefaultPadding / 4),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: kDarkBlackColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: kDefaultPadding / 2),
          child
        ],
      ),
    );
  }
}
