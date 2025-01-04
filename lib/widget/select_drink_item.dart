import 'package:flutter/material.dart';
import '../screen/drink_content.dart'; // فيها بختار المشروب ينقلك لصفحة DrinkContent

class DrinkItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  DrinkItem(this.id, this.title, this.color);

  void SelectDrink(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      DrinkContent.routName,
      arguments: {
        'id': id,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => SelectDrink(context),
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
