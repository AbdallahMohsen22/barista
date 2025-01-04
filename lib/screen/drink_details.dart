import 'package:barista/dummy_data.dart';
import 'package:flutter/material.dart';

import '../youtube_video.dart'; //صفحة الفيديو والمكونات والخطوات وتفاصيل المشروب

class DrinkDetails extends StatelessWidget {
  static const routName = 'Drink_Details';
  final Function toggleFavorites;
  final Function isFavorites;

  final Function toggleShopping;
  final Function isShopping;

  const DrinkDetails(this.toggleFavorites, this.isFavorites, this.toggleShopping, this.isShopping);

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
    final drinkId = ModalRoute.of(context).settings.arguments as String;
    final selectedDrink =
    DUMMY_STEPS.firstWhere((drink) => drink.id == drinkId);

    return Scaffold(
      appBar: AppBar(
        title: Text(selectedDrink.title),

      ),
      body: SingleChildScrollView(
        child: Column(
          children:
          [
            SingleChildScrollView(
              child: Container(
                height: 300,
                width: double.infinity,
                child: YoutubeVideo(
                  url: 'https://www.youtube.com/watch?v=2iLojom5UTw',
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
                    child: Text(selectedDrink.ingredients[index]),
                  ),
                  color: Theme.of(context).accentColor,
                ),
                itemCount: selectedDrink.ingredients.length,
              ),
            ),
            buildSectionTitle(context, "الخطوات"),
            buildContainer(
              ListView.builder(
                itemBuilder: (ctx, index) => Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Text("# ${index + 1}"),
                      ),
                      title: Text(selectedDrink.steps[index]),
                    ),
                    Divider(),
                  ],
                ),
                itemCount: selectedDrink.steps.length,
              ),
            ),

          ],
        ),
      ),
      floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: ()=>toggleFavorites(drinkId),
              child: Icon(isFavorites(drinkId) ? Icons.star : Icons.star_border),

            ),
            FloatingActionButton(
              onPressed: ()=>toggleShopping(drinkId),
              child: Icon(isShopping(drinkId) ? Icons.shopping_cart_sharp : Icons.shopping_cart_outlined),

            ),
          ]
      ),


    );
  }
}
