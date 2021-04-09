import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news/constants.dart';
import 'package:news/controllers/MenuController.dart';
import 'package:news/screens/home/home_screen.dart';

import 'components/header.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _controller.scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header(),
              Container(
                padding: EdgeInsets.all(kDefaultPadding),
                constraints: BoxConstraints(maxWidth: kMaxWidth),
                child: HomeScreen(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
