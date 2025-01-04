import 'package:barista/food_data.dart';
import 'package:flutter/material.dart';

import '../youtube_video.dart'; //صفحة الفيديو والمكونات والخطوات وتفاصيل الطعام

class FoodDetails extends StatelessWidget {
  static const routName = 'Food_Details';

  final Function toggleFavorites;
  final Function isFavorites;

  final Function toggleShopping;
  final Function isShopping;

  const FoodDetails(this.toggleFavorites, this.isFavorites, this.toggleShopping, this.isShopping);

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      height: 200,
      width: 300,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final foodId = ModalRoute.of(context).settings.arguments as String;
    final selectedFood =
    DUMMY_Steps.firstWhere((food) => food.id == foodId);

    return Scaffold(
      appBar: AppBar(title: Text(selectedFood.title)),
      body: SingleChildScrollView(
        child: Column(
          children:
          [
            SingleChildScrollView(
              child: Container(
                height: 300,
                width: double.infinity,

                child: YoutubeVideo( url: 'https://www.youtube.com/watch?v=Q2CSX0YOKsk',
                ),
              ),
            ),
            buildSectionTitle(context, "المكونات"),
            buildContainer(
              ListView.builder(
                itemBuilder: (ctx, index) => Card(
                  child: Padding(
                    padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Text(selectedFood.ingredients[index]),
                  ),
                  color: Theme.of(context).accentColor,
                ),
                itemCount: selectedFood.ingredients.length,
              ),
            ),
            buildSectionTitle(context, "الخطوات"),
            buildContainer(ListView.builder(
              itemBuilder: (ctx, index) => Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      child: Text("# ${index+1}"),
                    ),
                    title: Text(selectedFood.steps[index]),
                  ),
                  Divider(),
                ],
              ),
              itemCount: selectedFood.steps.length,
            ),)
          ],
        ),
      ),

      floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: ()=>toggleFavorites(foodId),
              child: Icon(isFavorites(foodId) ? Icons.star : Icons.star_border),

            ),
            FloatingActionButton(
              onPressed: ()=>toggleShopping(foodId),
              child: Icon(isShopping(foodId) ? Icons.shopping_cart_sharp : Icons.shopping_cart_outlined),

            ),
          ]
      ),

    );
  }
}
