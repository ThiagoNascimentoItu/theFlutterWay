import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:news/controllers/MenuController.dart';
import 'package:news/screens/main/components/social.dart';
import 'package:news/screens/main/components/web_menu.dart';

import '../../../constants.dart';
import '../../../responsive.dart';

class Header extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: kDarkBlackColor,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              child: Row(
                children: [
                  if (!Responsive.isDesktop(context))
                    IconButton(
                      icon: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        _controller.openOrCloseDrawer();
                      },
                    ),
                  SvgPicture.asset("assets/icons/logo.svg"),
                  Spacer(),
                  if (Responsive.isDesktop(context)) WebMenu(),
                  Spacer(),
                  //Social midia
                  Social(),
                ],
              ),
            ),
            SizedBox(height: kDefaultPadding * 2),
            Text(
              "Welcome to our blog",
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
              child: Text(
                "Stay update with the newst design and development",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Raleway',
                  height: 1.5,
                ),
              ),
            ),
            FittedBox(
              child: TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        "Learn More",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: kDefaultPadding / 2),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: kDefaultPadding,
            )
          ],
        ),
      ),
    );
  }
}
