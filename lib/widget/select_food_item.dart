import 'package:barista/screen/food_screen.dart';
import 'package:barista/screen/food_content.dart';
import 'package:flutter/material.dart'; // فيها بختار الطعام ينقلك لصفحة FoodContent


class FoodItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  FoodItem(this.id, this.title, this.color);

  void SelectFood(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      FoodContent.routName,
      arguments: {
        'id': id,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => SelectFood(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
