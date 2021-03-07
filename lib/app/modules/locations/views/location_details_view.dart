import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rick_and_morty/app/data/models/location_model.dart';
import 'package:rick_and_morty/app/widgets/table_row.dart';

class LocationDetailsView extends GetView {
  final Location location = Get.arguments;

  @override
  Widget build(BuildContext context) => view;

  Widget get view => Scaffold(
        appBar: appBar,
        body: body,
      );

  AppBar get appBar => AppBar(
        title: Text('Location Details'),
      );

  Widget get body => Container(
        margin: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 24,
            ),
            Center(
              child: Text(
                location.name,
                style: TextStyle(fontSize: 32),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TableRowDetails(
              title: 'Type',
              value: location.type,
            ),
            TableRowDetails(
              title: 'Dimensions',
              value: location.dimension,
            ),
          ],
        ),
      );
}
