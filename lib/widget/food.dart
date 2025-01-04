import 'package:barista/screen/food_details.dart';

import '../module/barista.dart';
import '../screen/drink_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../youtube_video.dart';//صفحة عنصر الطعام فيها زر "Go to Steps"

class Food extends StatelessWidget {
  final String id;
  final String imageUrl;
  final String title;
  final int duration;
  final Complexity complexity;
  final Affordabillity affordabillity;

  const Food({
    @required this.id,
    @required this.imageUrl,
    @required this.title,
    @required this.duration,
    @required this.complexity,
    @required this.affordabillity});

  String get ComplexityText{
    switch(complexity){
      case Complexity.Simple: return 'Simple'; break;
      case Complexity.Challenging: return 'Challenging'; break;
      case Complexity.Hard: return 'Hard'; break;
      default: return "Unkown" ; break;
    }
  }

  void selectFood(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(FoodDetails.routName,
      arguments: id,

    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: selectDrink,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(imageUrl,
                      height: 200, width: double.infinity, fit: BoxFit.cover),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 200,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(vertical: 1,horizontal: 20),
                    child: Text(
                        title,
                        style: TextStyle(fontSize: 26, color: Colors.white),
                        softWrap: true,
                        overflow: TextOverflow.fade),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.schedule),
                      SizedBox(width: 6),
                      Text("$duration min"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.work),
                      SizedBox(width: 6),
                      Text("$ComplexityText"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.arrow_forward),
                      SizedBox(width: 6),
                      RaisedButton(color: Colors.red,child:Text('Go to Steps'),onPressed: (){return selectFood(context);}),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
