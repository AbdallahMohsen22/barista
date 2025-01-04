import 'package:barista/food_data.dart';
import 'package:barista/widget/select_food_item.dart';
import 'package:flutter/material.dart';

import '../youtube_video.dart'; //صفحة الطعام فيها(GridView) بستدعي id,title,color من food_data

class FoodScreen extends StatelessWidget {

  static const routName = 'FoodScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chef')),
      body: GridView(
        padding: EdgeInsets.all(25),
        children: DUMMY_FOOD
            .map(
              (catData) =>
              FoodItem(catData.id, catData.title, catData.color),
        )
            .toList(),

        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
