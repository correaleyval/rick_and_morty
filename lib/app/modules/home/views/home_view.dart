import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rick_and_morty/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) => view;

  Widget get view => Scaffold(
        appBar: appBar,
        body: body,
      );

  Widget get appBar => AppBar(
        title: Text('RMDB'),
      );

  Widget get body => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            getColumnWithImageAndText(
              imageAsset: 'assets/images/characters.png',
              title: 'Characters',
              onTap: () => Get.toNamed(Routes.CHARACTERS),
            ),
            getColumnWithImageAndText(
              imageAsset: 'assets/images/locations.png',
              title: 'Locations',
              onTap: () => Get.toNamed(Routes.LOCATIONS),
            ),
            getColumnWithImageAndText(
              imageAsset: 'assets/images/episodes.png',
              title: 'Episodes',
              onTap: () => Get.toNamed(Routes.EPISODES),
            ),
          ],
        ),
      );

  Widget getColumnWithImageAndText({
    String imageAsset,
    String title,
    Function onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: <Widget>[
          Image.asset(
            imageAsset,
            width: 120,
            height: 120,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 48),
          )
        ],
      ),
    );
  }
}
