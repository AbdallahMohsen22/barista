import 'package:barista/dummy_data.dart';
import 'package:barista/widget/select_drink_item.dart';
import 'package:flutter/material.dart'; //صفحة المشروبات فيها(GridView) بستدعي id,title,color من dummy_data


class DrinkScreen extends StatelessWidget {

  static const routName = 'DrinkScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Barista')),
      body: GridView(
        padding: EdgeInsets.all(25),
        children: DUMMY_CATEGORIES
            .map(
              (catData) =>
                  DrinkItem(catData.id, catData.title, catData.color),
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
