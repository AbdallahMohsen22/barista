import 'package:barista/screen/food_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'drinks_screen.dart'; //صفحة الهوم فيها المشروبات والطعام والحلويات

class Content_Home extends StatefulWidget {


  @override
  _Content_HomeState createState() => _Content_HomeState();
}

class _Content_HomeState extends State<Content_Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Center(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DrinkScreen()));
                },
                child: Card(
                  elevation: 15,
                  child: Column(
                    children: [
                      Image.asset("assets/image/drinks.jpg",
                        fit: BoxFit.cover,
                        height: 250,
                        width: 350,),
                      Container(
                        child: Text(
                          "<<Drinks>>",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        padding: EdgeInsets.all(15),
                      ),
                    ],
                  ),
                ),
              ),  //drinks
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FoodScreen()));
                },
                child: Card(
                  elevation: 15,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/image/foood.jpg",
                        fit: BoxFit.cover,
                        height: 250,
                        width: 350,
                      ),
                      Container(
                        child: Text(
                          "<<Foods>>",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        padding: EdgeInsets.all(15),
                      ),
                    ],
                  ),
                ),
              ),  //foods
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DrinkScreen()));
                },
                child: Card(
                  elevation: 15,
                  child: Column(
                    children: [
                      Image.asset("assets/image/dessert.jpg",
                        fit: BoxFit.cover,
                        height: 250,
                        width: 350,),
                      Container(
                        child: Text(
                          "<<Desserts>>",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        padding: EdgeInsets.all(15),
                      ),
                    ],
                  ),
                ),
              ),  //desserts
            ],
          ),
        ),
      ),
    );
  }
}
