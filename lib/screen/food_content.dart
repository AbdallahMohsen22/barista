import 'package:barista/widget/food.dart';
import 'package:barista/widget/select_food_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../food_data.dart'; //بستدعي فيها id,title,image,duration,complexity من Food

class FoodContent extends StatefulWidget {
  static const routName = 'Food_content';

  @override
  _FoodContentState createState() => _FoodContentState();
}

class _FoodContentState extends State<FoodContent> {
  @override
  Widget build(BuildContext context) {
    final routeArg =
    ModalRoute.of(context).settings.arguments as Map<String, String>;
    final foodId = routeArg['id'];
    final foodTitle = routeArg['title'];
    final foodSteps = DUMMY_Steps.where((step) {
      return step.categories.contains(foodId);
    }).toList();

    return Scaffold(
      appBar: AppBar(title: Text(foodTitle)),
      body: Container(
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return Food(
                id: foodSteps[index].id,
                imageUrl: foodSteps[index].imageUrl,
                title: foodSteps[index].title,
                duration: foodSteps[index].duration,
                complexity: foodSteps[index].complexity,
                affordabillity: foodSteps[index].affordabillity);
          },
          itemCount: foodSteps.length,
        ),

      ),
    );
  }
}
