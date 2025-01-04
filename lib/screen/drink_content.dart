import 'package:barista/widget/drink.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../dummy_data.dart';//بستدعي فيها id,title,image,duration,complexity من Drink

class DrinkContent extends StatefulWidget {
  static const routName = 'Drink_screen';

  @override
  _DrinkContentState createState() => _DrinkContentState();
}

class _DrinkContentState extends State<DrinkContent> {
  @override
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryId = routeArg['id'];
    final categoryTitle = routeArg['title'];
    final categorySteps = DUMMY_STEPS.where((step) {
      return step.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle)),
      body: Container(
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return Drink(
                id: categorySteps[index].id,
                imageUrl: categorySteps[index].imageUrl,
                title: categorySteps[index].title,
                duration: categorySteps[index].duration,
                complexity: categorySteps[index].complexity,
                affordabillity: categorySteps[index].affordabillity);
          },
          itemCount: categorySteps.length,
        ),

      ),
    );
  }
}
